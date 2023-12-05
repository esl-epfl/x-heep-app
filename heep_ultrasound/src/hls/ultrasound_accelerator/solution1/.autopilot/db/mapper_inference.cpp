#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_input_r_cap_bc;
static AESL_RUNTIME_BC __xlx_input_r_V_size_Reader("../tv/stream_size/stream_size_in_input_r.dat");
unsigned int ap_apatb_output_r_cap_bc;
static AESL_RUNTIME_BC __xlx_output_r_V_size_Reader("../tv/stream_size/stream_size_out_output_r.dat");
extern "C" void inference(short*, short*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_inference_hw(volatile void * __xlx_apatb_param_input_r, volatile void * __xlx_apatb_param_output_r, volatile void * __xlx_apatb_param_conv_weights_0, volatile void * __xlx_apatb_param_conv_weights_1, volatile void * __xlx_apatb_param_conv_weights_2, volatile void * __xlx_apatb_param_conv_weights_3, volatile void * __xlx_apatb_param_conv_weights_4, volatile void * __xlx_apatb_param_conv_weights_5, volatile void * __xlx_apatb_param_conv_weights_6, volatile void * __xlx_apatb_param_conv_weights_7, volatile void * __xlx_apatb_param_conv_weights_8, volatile void * __xlx_apatb_param_conv_weights_9, volatile void * __xlx_apatb_param_conv_weights_10, volatile void * __xlx_apatb_param_conv_weights_11, volatile void * __xlx_apatb_param_conv_weights_12, volatile void * __xlx_apatb_param_conv_weights_13, volatile void * __xlx_apatb_param_conv_weights_14, volatile void * __xlx_apatb_param_conv_weights_15, volatile void * __xlx_apatb_param_conv_biases_0, volatile void * __xlx_apatb_param_conv_biases_1, volatile void * __xlx_apatb_param_conv_biases_2, volatile void * __xlx_apatb_param_conv_biases_3, volatile void * __xlx_apatb_param_conv_biases_4, volatile void * __xlx_apatb_param_conv_biases_5, volatile void * __xlx_apatb_param_conv_biases_6, volatile void * __xlx_apatb_param_conv_biases_7, volatile void * __xlx_apatb_param_conv_biases_8, volatile void * __xlx_apatb_param_conv_biases_9, volatile void * __xlx_apatb_param_conv_biases_10, volatile void * __xlx_apatb_param_conv_biases_11, volatile void * __xlx_apatb_param_conv_biases_12, volatile void * __xlx_apatb_param_conv_biases_13, volatile void * __xlx_apatb_param_conv_biases_14, volatile void * __xlx_apatb_param_conv_biases_15, int __xlx_apatb_param_pool_size, int __xlx_apatb_param_pool_stride, volatile void * __xlx_apatb_param_linear_weights_0, volatile void * __xlx_apatb_param_linear_weights_1, volatile void * __xlx_apatb_param_linear_weights_2, volatile void * __xlx_apatb_param_linear_weights_3, volatile void * __xlx_apatb_param_linear_weights_4, volatile void * __xlx_apatb_param_linear_weights_5, volatile void * __xlx_apatb_param_linear_weights_6, volatile void * __xlx_apatb_param_linear_weights_7, volatile void * __xlx_apatb_param_linear_weights_8, volatile void * __xlx_apatb_param_linear_weights_9, volatile void * __xlx_apatb_param_linear_weights_10, volatile void * __xlx_apatb_param_linear_weights_11, volatile void * __xlx_apatb_param_linear_weights_12, volatile void * __xlx_apatb_param_linear_weights_13, volatile void * __xlx_apatb_param_linear_weights_14, volatile void * __xlx_apatb_param_linear_weights_15, volatile void * __xlx_apatb_param_linear_biases_0, volatile void * __xlx_apatb_param_linear_biases_1, volatile void * __xlx_apatb_param_linear_biases_2, volatile void * __xlx_apatb_param_linear_biases_3, volatile void * __xlx_apatb_param_linear_biases_4, volatile void * __xlx_apatb_param_linear_biases_5, volatile void * __xlx_apatb_param_linear_biases_6, volatile void * __xlx_apatb_param_linear_biases_7, volatile void * __xlx_apatb_param_linear_biases_8, volatile void * __xlx_apatb_param_linear_biases_9, volatile void * __xlx_apatb_param_linear_biases_10, volatile void * __xlx_apatb_param_linear_biases_11, volatile void * __xlx_apatb_param_linear_biases_12, volatile void * __xlx_apatb_param_linear_biases_13, volatile void * __xlx_apatb_param_linear_biases_14, volatile void * __xlx_apatb_param_linear_biases_15) {
auto* sinput_r = bcsim::createStream((hls::stream<short>*)__xlx_apatb_param_input_r);
  //Create input buffer for output_r
  ap_apatb_output_r_cap_bc = __xlx_output_r_V_size_Reader.read_size();
  short* __xlx_output_r_input_buffer= new short[ap_apatb_output_r_cap_bc];
auto* soutput_r = bcsim::createStream((hls::stream<short>*)__xlx_apatb_param_output_r);
  // Collect __xlx_conv_weights_0__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_0__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_0)[j*4+3];
    __xlx_conv_weights_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_0 = 128;
  int __xlx_offset_param_conv_weights_0 = 0;
  int __xlx_offset_byte_param_conv_weights_0 = 0*4;
  int* __xlx_conv_weights_0__input_buffer= new int[__xlx_conv_weights_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_0__tmp_vec.size(); ++i) {
    __xlx_conv_weights_0__input_buffer[i] = __xlx_conv_weights_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_1__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_1__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_1)[j*4+3];
    __xlx_conv_weights_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_1 = 128;
  int __xlx_offset_param_conv_weights_1 = 0;
  int __xlx_offset_byte_param_conv_weights_1 = 0*4;
  int* __xlx_conv_weights_1__input_buffer= new int[__xlx_conv_weights_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_1__tmp_vec.size(); ++i) {
    __xlx_conv_weights_1__input_buffer[i] = __xlx_conv_weights_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_2__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_2__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_2)[j*4+3];
    __xlx_conv_weights_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_2 = 128;
  int __xlx_offset_param_conv_weights_2 = 0;
  int __xlx_offset_byte_param_conv_weights_2 = 0*4;
  int* __xlx_conv_weights_2__input_buffer= new int[__xlx_conv_weights_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_2__tmp_vec.size(); ++i) {
    __xlx_conv_weights_2__input_buffer[i] = __xlx_conv_weights_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_3__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_3__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_3)[j*4+3];
    __xlx_conv_weights_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_3 = 128;
  int __xlx_offset_param_conv_weights_3 = 0;
  int __xlx_offset_byte_param_conv_weights_3 = 0*4;
  int* __xlx_conv_weights_3__input_buffer= new int[__xlx_conv_weights_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_3__tmp_vec.size(); ++i) {
    __xlx_conv_weights_3__input_buffer[i] = __xlx_conv_weights_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_4__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_4__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_4)[j*4+3];
    __xlx_conv_weights_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_4 = 128;
  int __xlx_offset_param_conv_weights_4 = 0;
  int __xlx_offset_byte_param_conv_weights_4 = 0*4;
  int* __xlx_conv_weights_4__input_buffer= new int[__xlx_conv_weights_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_4__tmp_vec.size(); ++i) {
    __xlx_conv_weights_4__input_buffer[i] = __xlx_conv_weights_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_5__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_5__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_5)[j*4+3];
    __xlx_conv_weights_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_5 = 128;
  int __xlx_offset_param_conv_weights_5 = 0;
  int __xlx_offset_byte_param_conv_weights_5 = 0*4;
  int* __xlx_conv_weights_5__input_buffer= new int[__xlx_conv_weights_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_5__tmp_vec.size(); ++i) {
    __xlx_conv_weights_5__input_buffer[i] = __xlx_conv_weights_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_6__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_6__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_6)[j*4+3];
    __xlx_conv_weights_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_6 = 128;
  int __xlx_offset_param_conv_weights_6 = 0;
  int __xlx_offset_byte_param_conv_weights_6 = 0*4;
  int* __xlx_conv_weights_6__input_buffer= new int[__xlx_conv_weights_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_6__tmp_vec.size(); ++i) {
    __xlx_conv_weights_6__input_buffer[i] = __xlx_conv_weights_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_7__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_7__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_7)[j*4+3];
    __xlx_conv_weights_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_7 = 128;
  int __xlx_offset_param_conv_weights_7 = 0;
  int __xlx_offset_byte_param_conv_weights_7 = 0*4;
  int* __xlx_conv_weights_7__input_buffer= new int[__xlx_conv_weights_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_7__tmp_vec.size(); ++i) {
    __xlx_conv_weights_7__input_buffer[i] = __xlx_conv_weights_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_8__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_8__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_8)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_8)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_8)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_8)[j*4+3];
    __xlx_conv_weights_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_8 = 128;
  int __xlx_offset_param_conv_weights_8 = 0;
  int __xlx_offset_byte_param_conv_weights_8 = 0*4;
  int* __xlx_conv_weights_8__input_buffer= new int[__xlx_conv_weights_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_8__tmp_vec.size(); ++i) {
    __xlx_conv_weights_8__input_buffer[i] = __xlx_conv_weights_8__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_9__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_9__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_9)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_9)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_9)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_9)[j*4+3];
    __xlx_conv_weights_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_9 = 128;
  int __xlx_offset_param_conv_weights_9 = 0;
  int __xlx_offset_byte_param_conv_weights_9 = 0*4;
  int* __xlx_conv_weights_9__input_buffer= new int[__xlx_conv_weights_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_9__tmp_vec.size(); ++i) {
    __xlx_conv_weights_9__input_buffer[i] = __xlx_conv_weights_9__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_10__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_10__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_10)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_10)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_10)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_10)[j*4+3];
    __xlx_conv_weights_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_10 = 128;
  int __xlx_offset_param_conv_weights_10 = 0;
  int __xlx_offset_byte_param_conv_weights_10 = 0*4;
  int* __xlx_conv_weights_10__input_buffer= new int[__xlx_conv_weights_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_10__tmp_vec.size(); ++i) {
    __xlx_conv_weights_10__input_buffer[i] = __xlx_conv_weights_10__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_11__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_11__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_11)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_11)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_11)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_11)[j*4+3];
    __xlx_conv_weights_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_11 = 128;
  int __xlx_offset_param_conv_weights_11 = 0;
  int __xlx_offset_byte_param_conv_weights_11 = 0*4;
  int* __xlx_conv_weights_11__input_buffer= new int[__xlx_conv_weights_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_11__tmp_vec.size(); ++i) {
    __xlx_conv_weights_11__input_buffer[i] = __xlx_conv_weights_11__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_12__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_12__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_12)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_12)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_12)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_12)[j*4+3];
    __xlx_conv_weights_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_12 = 128;
  int __xlx_offset_param_conv_weights_12 = 0;
  int __xlx_offset_byte_param_conv_weights_12 = 0*4;
  int* __xlx_conv_weights_12__input_buffer= new int[__xlx_conv_weights_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_12__tmp_vec.size(); ++i) {
    __xlx_conv_weights_12__input_buffer[i] = __xlx_conv_weights_12__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_13__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_13__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_13)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_13)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_13)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_13)[j*4+3];
    __xlx_conv_weights_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_13 = 128;
  int __xlx_offset_param_conv_weights_13 = 0;
  int __xlx_offset_byte_param_conv_weights_13 = 0*4;
  int* __xlx_conv_weights_13__input_buffer= new int[__xlx_conv_weights_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_13__tmp_vec.size(); ++i) {
    __xlx_conv_weights_13__input_buffer[i] = __xlx_conv_weights_13__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_14__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_14__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_14)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_14)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_14)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_14)[j*4+3];
    __xlx_conv_weights_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_14 = 128;
  int __xlx_offset_param_conv_weights_14 = 0;
  int __xlx_offset_byte_param_conv_weights_14 = 0*4;
  int* __xlx_conv_weights_14__input_buffer= new int[__xlx_conv_weights_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_14__tmp_vec.size(); ++i) {
    __xlx_conv_weights_14__input_buffer[i] = __xlx_conv_weights_14__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_conv_weights_15__tmp_vec
  vector<sc_bv<32> >__xlx_conv_weights_15__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_conv_weights_15)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_conv_weights_15)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_conv_weights_15)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_conv_weights_15)[j*4+3];
    __xlx_conv_weights_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_conv_weights_15 = 128;
  int __xlx_offset_param_conv_weights_15 = 0;
  int __xlx_offset_byte_param_conv_weights_15 = 0*4;
  int* __xlx_conv_weights_15__input_buffer= new int[__xlx_conv_weights_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_weights_15__tmp_vec.size(); ++i) {
    __xlx_conv_weights_15__input_buffer[i] = __xlx_conv_weights_15__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_0__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_0__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_0)[j*4+3];
    __xlx_linear_weights_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_0 = 16;
  int __xlx_offset_param_linear_weights_0 = 0;
  int __xlx_offset_byte_param_linear_weights_0 = 0*4;
  int* __xlx_linear_weights_0__input_buffer= new int[__xlx_linear_weights_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_0__tmp_vec.size(); ++i) {
    __xlx_linear_weights_0__input_buffer[i] = __xlx_linear_weights_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_1__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_1__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_1)[j*4+3];
    __xlx_linear_weights_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_1 = 16;
  int __xlx_offset_param_linear_weights_1 = 0;
  int __xlx_offset_byte_param_linear_weights_1 = 0*4;
  int* __xlx_linear_weights_1__input_buffer= new int[__xlx_linear_weights_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_1__tmp_vec.size(); ++i) {
    __xlx_linear_weights_1__input_buffer[i] = __xlx_linear_weights_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_2__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_2__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_2)[j*4+3];
    __xlx_linear_weights_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_2 = 16;
  int __xlx_offset_param_linear_weights_2 = 0;
  int __xlx_offset_byte_param_linear_weights_2 = 0*4;
  int* __xlx_linear_weights_2__input_buffer= new int[__xlx_linear_weights_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_2__tmp_vec.size(); ++i) {
    __xlx_linear_weights_2__input_buffer[i] = __xlx_linear_weights_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_3__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_3__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_3)[j*4+3];
    __xlx_linear_weights_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_3 = 16;
  int __xlx_offset_param_linear_weights_3 = 0;
  int __xlx_offset_byte_param_linear_weights_3 = 0*4;
  int* __xlx_linear_weights_3__input_buffer= new int[__xlx_linear_weights_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_3__tmp_vec.size(); ++i) {
    __xlx_linear_weights_3__input_buffer[i] = __xlx_linear_weights_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_4__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_4__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_4)[j*4+3];
    __xlx_linear_weights_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_4 = 16;
  int __xlx_offset_param_linear_weights_4 = 0;
  int __xlx_offset_byte_param_linear_weights_4 = 0*4;
  int* __xlx_linear_weights_4__input_buffer= new int[__xlx_linear_weights_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_4__tmp_vec.size(); ++i) {
    __xlx_linear_weights_4__input_buffer[i] = __xlx_linear_weights_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_5__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_5__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_5)[j*4+3];
    __xlx_linear_weights_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_5 = 16;
  int __xlx_offset_param_linear_weights_5 = 0;
  int __xlx_offset_byte_param_linear_weights_5 = 0*4;
  int* __xlx_linear_weights_5__input_buffer= new int[__xlx_linear_weights_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_5__tmp_vec.size(); ++i) {
    __xlx_linear_weights_5__input_buffer[i] = __xlx_linear_weights_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_6__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_6__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_6)[j*4+3];
    __xlx_linear_weights_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_6 = 16;
  int __xlx_offset_param_linear_weights_6 = 0;
  int __xlx_offset_byte_param_linear_weights_6 = 0*4;
  int* __xlx_linear_weights_6__input_buffer= new int[__xlx_linear_weights_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_6__tmp_vec.size(); ++i) {
    __xlx_linear_weights_6__input_buffer[i] = __xlx_linear_weights_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_7__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_7__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_7)[j*4+3];
    __xlx_linear_weights_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_7 = 16;
  int __xlx_offset_param_linear_weights_7 = 0;
  int __xlx_offset_byte_param_linear_weights_7 = 0*4;
  int* __xlx_linear_weights_7__input_buffer= new int[__xlx_linear_weights_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_7__tmp_vec.size(); ++i) {
    __xlx_linear_weights_7__input_buffer[i] = __xlx_linear_weights_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_8__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_8__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_8)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_8)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_8)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_8)[j*4+3];
    __xlx_linear_weights_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_8 = 16;
  int __xlx_offset_param_linear_weights_8 = 0;
  int __xlx_offset_byte_param_linear_weights_8 = 0*4;
  int* __xlx_linear_weights_8__input_buffer= new int[__xlx_linear_weights_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_8__tmp_vec.size(); ++i) {
    __xlx_linear_weights_8__input_buffer[i] = __xlx_linear_weights_8__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_9__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_9__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_9)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_9)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_9)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_9)[j*4+3];
    __xlx_linear_weights_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_9 = 16;
  int __xlx_offset_param_linear_weights_9 = 0;
  int __xlx_offset_byte_param_linear_weights_9 = 0*4;
  int* __xlx_linear_weights_9__input_buffer= new int[__xlx_linear_weights_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_9__tmp_vec.size(); ++i) {
    __xlx_linear_weights_9__input_buffer[i] = __xlx_linear_weights_9__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_10__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_10__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_10)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_10)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_10)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_10)[j*4+3];
    __xlx_linear_weights_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_10 = 16;
  int __xlx_offset_param_linear_weights_10 = 0;
  int __xlx_offset_byte_param_linear_weights_10 = 0*4;
  int* __xlx_linear_weights_10__input_buffer= new int[__xlx_linear_weights_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_10__tmp_vec.size(); ++i) {
    __xlx_linear_weights_10__input_buffer[i] = __xlx_linear_weights_10__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_11__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_11__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_11)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_11)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_11)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_11)[j*4+3];
    __xlx_linear_weights_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_11 = 16;
  int __xlx_offset_param_linear_weights_11 = 0;
  int __xlx_offset_byte_param_linear_weights_11 = 0*4;
  int* __xlx_linear_weights_11__input_buffer= new int[__xlx_linear_weights_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_11__tmp_vec.size(); ++i) {
    __xlx_linear_weights_11__input_buffer[i] = __xlx_linear_weights_11__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_12__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_12__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_12)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_12)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_12)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_12)[j*4+3];
    __xlx_linear_weights_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_12 = 16;
  int __xlx_offset_param_linear_weights_12 = 0;
  int __xlx_offset_byte_param_linear_weights_12 = 0*4;
  int* __xlx_linear_weights_12__input_buffer= new int[__xlx_linear_weights_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_12__tmp_vec.size(); ++i) {
    __xlx_linear_weights_12__input_buffer[i] = __xlx_linear_weights_12__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_13__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_13__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_13)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_13)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_13)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_13)[j*4+3];
    __xlx_linear_weights_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_13 = 16;
  int __xlx_offset_param_linear_weights_13 = 0;
  int __xlx_offset_byte_param_linear_weights_13 = 0*4;
  int* __xlx_linear_weights_13__input_buffer= new int[__xlx_linear_weights_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_13__tmp_vec.size(); ++i) {
    __xlx_linear_weights_13__input_buffer[i] = __xlx_linear_weights_13__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_14__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_14__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_14)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_14)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_14)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_14)[j*4+3];
    __xlx_linear_weights_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_14 = 16;
  int __xlx_offset_param_linear_weights_14 = 0;
  int __xlx_offset_byte_param_linear_weights_14 = 0*4;
  int* __xlx_linear_weights_14__input_buffer= new int[__xlx_linear_weights_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_14__tmp_vec.size(); ++i) {
    __xlx_linear_weights_14__input_buffer[i] = __xlx_linear_weights_14__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_linear_weights_15__tmp_vec
  vector<sc_bv<32> >__xlx_linear_weights_15__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_linear_weights_15)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_linear_weights_15)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_linear_weights_15)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_linear_weights_15)[j*4+3];
    __xlx_linear_weights_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_linear_weights_15 = 16;
  int __xlx_offset_param_linear_weights_15 = 0;
  int __xlx_offset_byte_param_linear_weights_15 = 0*4;
  int* __xlx_linear_weights_15__input_buffer= new int[__xlx_linear_weights_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_linear_weights_15__tmp_vec.size(); ++i) {
    __xlx_linear_weights_15__input_buffer[i] = __xlx_linear_weights_15__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  inference(sinput_r->data<short>(), soutput_r->data<short>(), __xlx_conv_weights_0__input_buffer, __xlx_conv_weights_1__input_buffer, __xlx_conv_weights_2__input_buffer, __xlx_conv_weights_3__input_buffer, __xlx_conv_weights_4__input_buffer, __xlx_conv_weights_5__input_buffer, __xlx_conv_weights_6__input_buffer, __xlx_conv_weights_7__input_buffer, __xlx_conv_weights_8__input_buffer, __xlx_conv_weights_9__input_buffer, __xlx_conv_weights_10__input_buffer, __xlx_conv_weights_11__input_buffer, __xlx_conv_weights_12__input_buffer, __xlx_conv_weights_13__input_buffer, __xlx_conv_weights_14__input_buffer, __xlx_conv_weights_15__input_buffer, __xlx_apatb_param_conv_biases_0, __xlx_apatb_param_conv_biases_1, __xlx_apatb_param_conv_biases_2, __xlx_apatb_param_conv_biases_3, __xlx_apatb_param_conv_biases_4, __xlx_apatb_param_conv_biases_5, __xlx_apatb_param_conv_biases_6, __xlx_apatb_param_conv_biases_7, __xlx_apatb_param_conv_biases_8, __xlx_apatb_param_conv_biases_9, __xlx_apatb_param_conv_biases_10, __xlx_apatb_param_conv_biases_11, __xlx_apatb_param_conv_biases_12, __xlx_apatb_param_conv_biases_13, __xlx_apatb_param_conv_biases_14, __xlx_apatb_param_conv_biases_15, __xlx_apatb_param_pool_size, __xlx_apatb_param_pool_stride, __xlx_linear_weights_0__input_buffer, __xlx_linear_weights_1__input_buffer, __xlx_linear_weights_2__input_buffer, __xlx_linear_weights_3__input_buffer, __xlx_linear_weights_4__input_buffer, __xlx_linear_weights_5__input_buffer, __xlx_linear_weights_6__input_buffer, __xlx_linear_weights_7__input_buffer, __xlx_linear_weights_8__input_buffer, __xlx_linear_weights_9__input_buffer, __xlx_linear_weights_10__input_buffer, __xlx_linear_weights_11__input_buffer, __xlx_linear_weights_12__input_buffer, __xlx_linear_weights_13__input_buffer, __xlx_linear_weights_14__input_buffer, __xlx_linear_weights_15__input_buffer, __xlx_apatb_param_linear_biases_0, __xlx_apatb_param_linear_biases_1, __xlx_apatb_param_linear_biases_2, __xlx_apatb_param_linear_biases_3, __xlx_apatb_param_linear_biases_4, __xlx_apatb_param_linear_biases_5, __xlx_apatb_param_linear_biases_6, __xlx_apatb_param_linear_biases_7, __xlx_apatb_param_linear_biases_8, __xlx_apatb_param_linear_biases_9, __xlx_apatb_param_linear_biases_10, __xlx_apatb_param_linear_biases_11, __xlx_apatb_param_linear_biases_12, __xlx_apatb_param_linear_biases_13, __xlx_apatb_param_linear_biases_14, __xlx_apatb_param_linear_biases_15);
sinput_r->transfer((hls::stream<short>*)__xlx_apatb_param_input_r);
soutput_r->transfer((hls::stream<short>*)__xlx_apatb_param_output_r);
// print __xlx_apatb_param_conv_weights_0
  sc_bv<32>*__xlx_conv_weights_0_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_0];
  for (int i = 0; i < __xlx_size_param_conv_weights_0; ++i) {
    __xlx_conv_weights_0_output_buffer[i] = __xlx_conv_weights_0__input_buffer[i+__xlx_offset_param_conv_weights_0];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_0; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_0)[i*4+0] = __xlx_conv_weights_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_0)[i*4+1] = __xlx_conv_weights_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_0)[i*4+2] = __xlx_conv_weights_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_0)[i*4+3] = __xlx_conv_weights_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_1
  sc_bv<32>*__xlx_conv_weights_1_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_1];
  for (int i = 0; i < __xlx_size_param_conv_weights_1; ++i) {
    __xlx_conv_weights_1_output_buffer[i] = __xlx_conv_weights_1__input_buffer[i+__xlx_offset_param_conv_weights_1];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_1; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_1)[i*4+0] = __xlx_conv_weights_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_1)[i*4+1] = __xlx_conv_weights_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_1)[i*4+2] = __xlx_conv_weights_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_1)[i*4+3] = __xlx_conv_weights_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_2
  sc_bv<32>*__xlx_conv_weights_2_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_2];
  for (int i = 0; i < __xlx_size_param_conv_weights_2; ++i) {
    __xlx_conv_weights_2_output_buffer[i] = __xlx_conv_weights_2__input_buffer[i+__xlx_offset_param_conv_weights_2];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_2; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_2)[i*4+0] = __xlx_conv_weights_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_2)[i*4+1] = __xlx_conv_weights_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_2)[i*4+2] = __xlx_conv_weights_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_2)[i*4+3] = __xlx_conv_weights_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_3
  sc_bv<32>*__xlx_conv_weights_3_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_3];
  for (int i = 0; i < __xlx_size_param_conv_weights_3; ++i) {
    __xlx_conv_weights_3_output_buffer[i] = __xlx_conv_weights_3__input_buffer[i+__xlx_offset_param_conv_weights_3];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_3; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_3)[i*4+0] = __xlx_conv_weights_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_3)[i*4+1] = __xlx_conv_weights_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_3)[i*4+2] = __xlx_conv_weights_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_3)[i*4+3] = __xlx_conv_weights_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_4
  sc_bv<32>*__xlx_conv_weights_4_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_4];
  for (int i = 0; i < __xlx_size_param_conv_weights_4; ++i) {
    __xlx_conv_weights_4_output_buffer[i] = __xlx_conv_weights_4__input_buffer[i+__xlx_offset_param_conv_weights_4];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_4; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_4)[i*4+0] = __xlx_conv_weights_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_4)[i*4+1] = __xlx_conv_weights_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_4)[i*4+2] = __xlx_conv_weights_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_4)[i*4+3] = __xlx_conv_weights_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_5
  sc_bv<32>*__xlx_conv_weights_5_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_5];
  for (int i = 0; i < __xlx_size_param_conv_weights_5; ++i) {
    __xlx_conv_weights_5_output_buffer[i] = __xlx_conv_weights_5__input_buffer[i+__xlx_offset_param_conv_weights_5];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_5; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_5)[i*4+0] = __xlx_conv_weights_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_5)[i*4+1] = __xlx_conv_weights_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_5)[i*4+2] = __xlx_conv_weights_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_5)[i*4+3] = __xlx_conv_weights_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_6
  sc_bv<32>*__xlx_conv_weights_6_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_6];
  for (int i = 0; i < __xlx_size_param_conv_weights_6; ++i) {
    __xlx_conv_weights_6_output_buffer[i] = __xlx_conv_weights_6__input_buffer[i+__xlx_offset_param_conv_weights_6];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_6; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_6)[i*4+0] = __xlx_conv_weights_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_6)[i*4+1] = __xlx_conv_weights_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_6)[i*4+2] = __xlx_conv_weights_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_6)[i*4+3] = __xlx_conv_weights_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_7
  sc_bv<32>*__xlx_conv_weights_7_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_7];
  for (int i = 0; i < __xlx_size_param_conv_weights_7; ++i) {
    __xlx_conv_weights_7_output_buffer[i] = __xlx_conv_weights_7__input_buffer[i+__xlx_offset_param_conv_weights_7];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_7; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_7)[i*4+0] = __xlx_conv_weights_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_7)[i*4+1] = __xlx_conv_weights_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_7)[i*4+2] = __xlx_conv_weights_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_7)[i*4+3] = __xlx_conv_weights_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_8
  sc_bv<32>*__xlx_conv_weights_8_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_8];
  for (int i = 0; i < __xlx_size_param_conv_weights_8; ++i) {
    __xlx_conv_weights_8_output_buffer[i] = __xlx_conv_weights_8__input_buffer[i+__xlx_offset_param_conv_weights_8];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_8; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_8)[i*4+0] = __xlx_conv_weights_8_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_8)[i*4+1] = __xlx_conv_weights_8_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_8)[i*4+2] = __xlx_conv_weights_8_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_8)[i*4+3] = __xlx_conv_weights_8_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_9
  sc_bv<32>*__xlx_conv_weights_9_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_9];
  for (int i = 0; i < __xlx_size_param_conv_weights_9; ++i) {
    __xlx_conv_weights_9_output_buffer[i] = __xlx_conv_weights_9__input_buffer[i+__xlx_offset_param_conv_weights_9];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_9; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_9)[i*4+0] = __xlx_conv_weights_9_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_9)[i*4+1] = __xlx_conv_weights_9_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_9)[i*4+2] = __xlx_conv_weights_9_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_9)[i*4+3] = __xlx_conv_weights_9_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_10
  sc_bv<32>*__xlx_conv_weights_10_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_10];
  for (int i = 0; i < __xlx_size_param_conv_weights_10; ++i) {
    __xlx_conv_weights_10_output_buffer[i] = __xlx_conv_weights_10__input_buffer[i+__xlx_offset_param_conv_weights_10];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_10; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_10)[i*4+0] = __xlx_conv_weights_10_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_10)[i*4+1] = __xlx_conv_weights_10_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_10)[i*4+2] = __xlx_conv_weights_10_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_10)[i*4+3] = __xlx_conv_weights_10_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_11
  sc_bv<32>*__xlx_conv_weights_11_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_11];
  for (int i = 0; i < __xlx_size_param_conv_weights_11; ++i) {
    __xlx_conv_weights_11_output_buffer[i] = __xlx_conv_weights_11__input_buffer[i+__xlx_offset_param_conv_weights_11];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_11; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_11)[i*4+0] = __xlx_conv_weights_11_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_11)[i*4+1] = __xlx_conv_weights_11_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_11)[i*4+2] = __xlx_conv_weights_11_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_11)[i*4+3] = __xlx_conv_weights_11_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_12
  sc_bv<32>*__xlx_conv_weights_12_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_12];
  for (int i = 0; i < __xlx_size_param_conv_weights_12; ++i) {
    __xlx_conv_weights_12_output_buffer[i] = __xlx_conv_weights_12__input_buffer[i+__xlx_offset_param_conv_weights_12];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_12; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_12)[i*4+0] = __xlx_conv_weights_12_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_12)[i*4+1] = __xlx_conv_weights_12_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_12)[i*4+2] = __xlx_conv_weights_12_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_12)[i*4+3] = __xlx_conv_weights_12_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_13
  sc_bv<32>*__xlx_conv_weights_13_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_13];
  for (int i = 0; i < __xlx_size_param_conv_weights_13; ++i) {
    __xlx_conv_weights_13_output_buffer[i] = __xlx_conv_weights_13__input_buffer[i+__xlx_offset_param_conv_weights_13];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_13; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_13)[i*4+0] = __xlx_conv_weights_13_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_13)[i*4+1] = __xlx_conv_weights_13_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_13)[i*4+2] = __xlx_conv_weights_13_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_13)[i*4+3] = __xlx_conv_weights_13_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_14
  sc_bv<32>*__xlx_conv_weights_14_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_14];
  for (int i = 0; i < __xlx_size_param_conv_weights_14; ++i) {
    __xlx_conv_weights_14_output_buffer[i] = __xlx_conv_weights_14__input_buffer[i+__xlx_offset_param_conv_weights_14];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_14; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_14)[i*4+0] = __xlx_conv_weights_14_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_14)[i*4+1] = __xlx_conv_weights_14_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_14)[i*4+2] = __xlx_conv_weights_14_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_14)[i*4+3] = __xlx_conv_weights_14_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_conv_weights_15
  sc_bv<32>*__xlx_conv_weights_15_output_buffer = new sc_bv<32>[__xlx_size_param_conv_weights_15];
  for (int i = 0; i < __xlx_size_param_conv_weights_15; ++i) {
    __xlx_conv_weights_15_output_buffer[i] = __xlx_conv_weights_15__input_buffer[i+__xlx_offset_param_conv_weights_15];
  }
  for (int i = 0; i < __xlx_size_param_conv_weights_15; ++i) {
    ((char*)__xlx_apatb_param_conv_weights_15)[i*4+0] = __xlx_conv_weights_15_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_15)[i*4+1] = __xlx_conv_weights_15_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_15)[i*4+2] = __xlx_conv_weights_15_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_conv_weights_15)[i*4+3] = __xlx_conv_weights_15_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_0
  sc_bv<32>*__xlx_linear_weights_0_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_0];
  for (int i = 0; i < __xlx_size_param_linear_weights_0; ++i) {
    __xlx_linear_weights_0_output_buffer[i] = __xlx_linear_weights_0__input_buffer[i+__xlx_offset_param_linear_weights_0];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_0; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_0)[i*4+0] = __xlx_linear_weights_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_0)[i*4+1] = __xlx_linear_weights_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_0)[i*4+2] = __xlx_linear_weights_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_0)[i*4+3] = __xlx_linear_weights_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_1
  sc_bv<32>*__xlx_linear_weights_1_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_1];
  for (int i = 0; i < __xlx_size_param_linear_weights_1; ++i) {
    __xlx_linear_weights_1_output_buffer[i] = __xlx_linear_weights_1__input_buffer[i+__xlx_offset_param_linear_weights_1];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_1; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_1)[i*4+0] = __xlx_linear_weights_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_1)[i*4+1] = __xlx_linear_weights_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_1)[i*4+2] = __xlx_linear_weights_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_1)[i*4+3] = __xlx_linear_weights_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_2
  sc_bv<32>*__xlx_linear_weights_2_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_2];
  for (int i = 0; i < __xlx_size_param_linear_weights_2; ++i) {
    __xlx_linear_weights_2_output_buffer[i] = __xlx_linear_weights_2__input_buffer[i+__xlx_offset_param_linear_weights_2];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_2; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_2)[i*4+0] = __xlx_linear_weights_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_2)[i*4+1] = __xlx_linear_weights_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_2)[i*4+2] = __xlx_linear_weights_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_2)[i*4+3] = __xlx_linear_weights_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_3
  sc_bv<32>*__xlx_linear_weights_3_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_3];
  for (int i = 0; i < __xlx_size_param_linear_weights_3; ++i) {
    __xlx_linear_weights_3_output_buffer[i] = __xlx_linear_weights_3__input_buffer[i+__xlx_offset_param_linear_weights_3];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_3; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_3)[i*4+0] = __xlx_linear_weights_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_3)[i*4+1] = __xlx_linear_weights_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_3)[i*4+2] = __xlx_linear_weights_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_3)[i*4+3] = __xlx_linear_weights_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_4
  sc_bv<32>*__xlx_linear_weights_4_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_4];
  for (int i = 0; i < __xlx_size_param_linear_weights_4; ++i) {
    __xlx_linear_weights_4_output_buffer[i] = __xlx_linear_weights_4__input_buffer[i+__xlx_offset_param_linear_weights_4];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_4; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_4)[i*4+0] = __xlx_linear_weights_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_4)[i*4+1] = __xlx_linear_weights_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_4)[i*4+2] = __xlx_linear_weights_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_4)[i*4+3] = __xlx_linear_weights_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_5
  sc_bv<32>*__xlx_linear_weights_5_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_5];
  for (int i = 0; i < __xlx_size_param_linear_weights_5; ++i) {
    __xlx_linear_weights_5_output_buffer[i] = __xlx_linear_weights_5__input_buffer[i+__xlx_offset_param_linear_weights_5];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_5; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_5)[i*4+0] = __xlx_linear_weights_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_5)[i*4+1] = __xlx_linear_weights_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_5)[i*4+2] = __xlx_linear_weights_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_5)[i*4+3] = __xlx_linear_weights_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_6
  sc_bv<32>*__xlx_linear_weights_6_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_6];
  for (int i = 0; i < __xlx_size_param_linear_weights_6; ++i) {
    __xlx_linear_weights_6_output_buffer[i] = __xlx_linear_weights_6__input_buffer[i+__xlx_offset_param_linear_weights_6];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_6; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_6)[i*4+0] = __xlx_linear_weights_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_6)[i*4+1] = __xlx_linear_weights_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_6)[i*4+2] = __xlx_linear_weights_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_6)[i*4+3] = __xlx_linear_weights_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_7
  sc_bv<32>*__xlx_linear_weights_7_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_7];
  for (int i = 0; i < __xlx_size_param_linear_weights_7; ++i) {
    __xlx_linear_weights_7_output_buffer[i] = __xlx_linear_weights_7__input_buffer[i+__xlx_offset_param_linear_weights_7];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_7; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_7)[i*4+0] = __xlx_linear_weights_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_7)[i*4+1] = __xlx_linear_weights_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_7)[i*4+2] = __xlx_linear_weights_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_7)[i*4+3] = __xlx_linear_weights_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_8
  sc_bv<32>*__xlx_linear_weights_8_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_8];
  for (int i = 0; i < __xlx_size_param_linear_weights_8; ++i) {
    __xlx_linear_weights_8_output_buffer[i] = __xlx_linear_weights_8__input_buffer[i+__xlx_offset_param_linear_weights_8];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_8; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_8)[i*4+0] = __xlx_linear_weights_8_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_8)[i*4+1] = __xlx_linear_weights_8_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_8)[i*4+2] = __xlx_linear_weights_8_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_8)[i*4+3] = __xlx_linear_weights_8_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_9
  sc_bv<32>*__xlx_linear_weights_9_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_9];
  for (int i = 0; i < __xlx_size_param_linear_weights_9; ++i) {
    __xlx_linear_weights_9_output_buffer[i] = __xlx_linear_weights_9__input_buffer[i+__xlx_offset_param_linear_weights_9];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_9; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_9)[i*4+0] = __xlx_linear_weights_9_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_9)[i*4+1] = __xlx_linear_weights_9_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_9)[i*4+2] = __xlx_linear_weights_9_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_9)[i*4+3] = __xlx_linear_weights_9_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_10
  sc_bv<32>*__xlx_linear_weights_10_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_10];
  for (int i = 0; i < __xlx_size_param_linear_weights_10; ++i) {
    __xlx_linear_weights_10_output_buffer[i] = __xlx_linear_weights_10__input_buffer[i+__xlx_offset_param_linear_weights_10];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_10; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_10)[i*4+0] = __xlx_linear_weights_10_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_10)[i*4+1] = __xlx_linear_weights_10_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_10)[i*4+2] = __xlx_linear_weights_10_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_10)[i*4+3] = __xlx_linear_weights_10_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_11
  sc_bv<32>*__xlx_linear_weights_11_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_11];
  for (int i = 0; i < __xlx_size_param_linear_weights_11; ++i) {
    __xlx_linear_weights_11_output_buffer[i] = __xlx_linear_weights_11__input_buffer[i+__xlx_offset_param_linear_weights_11];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_11; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_11)[i*4+0] = __xlx_linear_weights_11_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_11)[i*4+1] = __xlx_linear_weights_11_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_11)[i*4+2] = __xlx_linear_weights_11_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_11)[i*4+3] = __xlx_linear_weights_11_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_12
  sc_bv<32>*__xlx_linear_weights_12_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_12];
  for (int i = 0; i < __xlx_size_param_linear_weights_12; ++i) {
    __xlx_linear_weights_12_output_buffer[i] = __xlx_linear_weights_12__input_buffer[i+__xlx_offset_param_linear_weights_12];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_12; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_12)[i*4+0] = __xlx_linear_weights_12_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_12)[i*4+1] = __xlx_linear_weights_12_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_12)[i*4+2] = __xlx_linear_weights_12_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_12)[i*4+3] = __xlx_linear_weights_12_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_13
  sc_bv<32>*__xlx_linear_weights_13_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_13];
  for (int i = 0; i < __xlx_size_param_linear_weights_13; ++i) {
    __xlx_linear_weights_13_output_buffer[i] = __xlx_linear_weights_13__input_buffer[i+__xlx_offset_param_linear_weights_13];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_13; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_13)[i*4+0] = __xlx_linear_weights_13_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_13)[i*4+1] = __xlx_linear_weights_13_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_13)[i*4+2] = __xlx_linear_weights_13_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_13)[i*4+3] = __xlx_linear_weights_13_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_14
  sc_bv<32>*__xlx_linear_weights_14_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_14];
  for (int i = 0; i < __xlx_size_param_linear_weights_14; ++i) {
    __xlx_linear_weights_14_output_buffer[i] = __xlx_linear_weights_14__input_buffer[i+__xlx_offset_param_linear_weights_14];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_14; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_14)[i*4+0] = __xlx_linear_weights_14_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_14)[i*4+1] = __xlx_linear_weights_14_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_14)[i*4+2] = __xlx_linear_weights_14_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_14)[i*4+3] = __xlx_linear_weights_14_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_linear_weights_15
  sc_bv<32>*__xlx_linear_weights_15_output_buffer = new sc_bv<32>[__xlx_size_param_linear_weights_15];
  for (int i = 0; i < __xlx_size_param_linear_weights_15; ++i) {
    __xlx_linear_weights_15_output_buffer[i] = __xlx_linear_weights_15__input_buffer[i+__xlx_offset_param_linear_weights_15];
  }
  for (int i = 0; i < __xlx_size_param_linear_weights_15; ++i) {
    ((char*)__xlx_apatb_param_linear_weights_15)[i*4+0] = __xlx_linear_weights_15_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_15)[i*4+1] = __xlx_linear_weights_15_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_15)[i*4+2] = __xlx_linear_weights_15_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_linear_weights_15)[i*4+3] = __xlx_linear_weights_15_output_buffer[i].range(31, 24).to_uint();
  }
}
