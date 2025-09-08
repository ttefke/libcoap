# Makefile for libcoap

# Library Name
NAME := libcoap

# Include source files
ifeq ($(CONFIG_INCLUDE_COAP), 1)

# Includes to be exported to project level
COMPONENT_ADD_INCLUDEDIRS += include

COMPONENT_SRCS := \
	src/coap_address.c \
	src/coap_async.c \
	src/coap_block.c \
	src/coap_cache.c \
	src/coap_debug.c \
	src/coap_dtls.c \
	src/coap_encode.c \
	src/coap_hashkey.c \
	src/coap_io.c \
	src/coap_io_lwip.c \
	src/coap_layers.c \
	src/coap_net.c \
	src/coap_netif.c \
	src/coap_option.c \
	src/coap_pdu.c \
	src/coap_prng.c \
	src/coap_proxy.c \
	src/coap_resource.c \
	src/coap_session.c \
	src/coap_str.c \
	src/coap_subscribe.c \
	src/coap_tcp.c \
	src/coap_threadsafe.c \
	src/coap_uri.c \
	src/coap_ws.c \
	src/coap_mbedtls.c

COMPONENT_SRCDIRS := src

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

CFLAGS += -Wno-unused-parameter
endif
