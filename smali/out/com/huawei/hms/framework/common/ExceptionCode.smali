.class public Lcom/huawei/hms/framework/common/ExceptionCode;
.super Ljava/lang/Object;
.source "ExceptionCode.java"


# static fields
.field public static final CANCEL:I = 0x9896e4

.field private static final CONNECT:Ljava/lang/String; = "connect"

.field public static final CONNECTION_ABORT:I = 0x989812

.field public static final CONNECTION_REFUSED:I = 0x989814

.field public static final CONNECTION_RESET:I = 0x989811

.field public static final CONNECT_FAILED:I = 0x989813

.field public static final CRASH_EXCEPTION:I = 0x989680

.field public static final INTERRUPT_CONNECT_CLOSE:I = 0x989815

.field public static final INTERRUPT_EXCEPTION:I = 0x9899a4

.field public static final NETWORK_CHANGED:I = 0x989749

.field public static final NETWORK_IO_EXCEPTION:I = 0x9899a2

.field public static final NETWORK_TIMEOUT:I = 0x9896e5

.field public static final NETWORK_UNREACHABLE:I = 0x989748

.field public static final NETWORK_UNSUPPORTED:I = 0x9896e6

.field public static final PROTOCOL_ERROR:I = 0x9899a1

.field private static final READ:Ljava/lang/String; = "read"

.field public static final READ_ERROR:I = 0x9898d9

.field public static final ROUTE_FAILED:I = 0x9897ad

.field public static final SHUTDOWN_EXCEPTION:I = 0x98974a

.field public static final SOCKET_CLOSE:I = 0x989816

.field public static final SOCKET_CONNECT_TIMEOUT:I = 0x989810

.field public static final SOCKET_READ_TIMEOUT:I = 0x9898d8

.field public static final SOCKET_TIMEOUT:I = 0x9899a3

.field public static final SOCKET_WRITE_TIMEOUT:I = 0x98993c

.field public static final SSL_HANDSHAKE_EXCEPTION:I = 0x989875

.field public static final SSL_PEERUNVERIFIED_EXCEPTION:I = 0x989876

.field public static final SSL_PROTOCOL_EXCEPTION:I = 0x989874

.field public static final UNABLE_TO_RESOLVE_HOST:I = 0x9897ac

.field public static final UNEXPECTED_EOF:I = 0x9899a0

.field private static final WRITE:Ljava/lang/String; = "write"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs checkExceptionContainsKey(Ljava/lang/Exception;[Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 303
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/framework/common/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/ExceptionCode;->checkStrContainsKey(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs checkStrContainsKey(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 311
    :cond_9
    array-length v0, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_19

    aget-object v3, p1, v2

    .line 312
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    return-object v3

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    return-object v1
.end method

.method public static getErrorCodeFromException(Ljava/lang/Exception;)I
    .registers 4

    const v0, 0x9899a2

    if-nez p0, :cond_6

    return v0

    .line 197
    :cond_6
    instance-of v1, p0, Ljava/io/IOException;

    if-nez v1, :cond_e

    const p0, 0x989680

    return p0

    .line 201
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    return v0

    .line 206
    :cond_15
    invoke-static {v1}, Lcom/huawei/hms/framework/common/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v1}, Lcom/huawei/hms/framework/common/ExceptionCode;->getErrorCodeFromMsg(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_20

    return v2

    .line 214
    :cond_20
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_29

    .line 215
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ExceptionCode;->getErrorCodeSocketTimeout(Ljava/lang/Exception;)I

    move-result p0

    return p0

    .line 218
    :cond_29
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_31

    const p0, 0x989813

    return p0

    .line 222
    :cond_31
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_39

    const p0, 0x9897ad

    return p0

    .line 226
    :cond_39
    instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_41

    const p0, 0x989874

    return p0

    .line 230
    :cond_41
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_49

    const p0, 0x989875

    return p0

    .line 234
    :cond_49
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_51

    const p0, 0x989876

    return p0

    .line 237
    :cond_51
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_59

    const p0, 0x9897ac

    return p0

    .line 241
    :cond_59
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_6d

    const-string p0, "connection has been shut down"

    .line 242
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_69

    const p0, 0x989815

    return p0

    :cond_69
    const p0, 0x9899a4

    return p0

    .line 248
    :cond_6d
    instance-of p0, p0, Ljava/net/ProtocolException;

    if-eqz p0, :cond_75

    const p0, 0x9899a1

    return p0

    :cond_75
    return v2
.end method

.method private static getErrorCodeFromMsg(Ljava/lang/String;)I
    .registers 2

    const-string v0, "unexpected end of stream"

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const p0, 0x9899a0

    goto/16 :goto_89

    :cond_d
    const-string v0, "unable to resolve host"

    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const p0, 0x9897ac

    goto/16 :goto_89

    :cond_1a
    const-string v0, "read error"

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const p0, 0x9898d9

    goto :goto_89

    :cond_26
    const-string v0, "connection reset"

    .line 278
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const p0, 0x989811

    goto :goto_89

    :cond_32
    const-string v0, "software caused connection abort"

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const p0, 0x989812

    goto :goto_89

    :cond_3e
    const-string v0, "failed to connect to"

    .line 283
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const p0, 0x989813

    goto :goto_89

    :cond_4a
    const-string v0, "connection refused"

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    const p0, 0x989814

    goto :goto_89

    :cond_56
    const-string v0, "connection timed out"

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    const p0, 0x989810

    return p0

    :cond_62
    const-string v0, "no route to host"

    .line 289
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const p0, 0x9897ad

    goto :goto_89

    :cond_6e
    const-string v0, "network is unreachable"

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const p0, 0x989748

    goto :goto_89

    :cond_7a
    const-string v0, "socket closed"

    .line 293
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_86

    const p0, 0x989816

    goto :goto_89

    :cond_86
    const p0, 0x9899a2

    :goto_89
    return p0
.end method

.method private static getErrorCodeSocketTimeout(Ljava/lang/Exception;)I
    .registers 8

    const-string v0, "write"

    const-string v1, "read"

    const-string v2, "connect"

    .line 256
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/huawei/hms/framework/common/ExceptionCode;->checkExceptionContainsKey(Ljava/lang/Exception;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x355996

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_34

    const v1, 0x6c257df

    if-eq v3, v1, :cond_2c

    const v0, 0x38b478ea

    if-eq v3, v0, :cond_24

    goto :goto_3c

    :cond_24
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x0

    goto :goto_3d

    :cond_2c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    move p0, v5

    goto :goto_3d

    :cond_34
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    move p0, v6

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 p0, -0x1

    :goto_3d
    if-eqz p0, :cond_4f

    if-eq p0, v6, :cond_4b

    if-eq p0, v5, :cond_47

    const p0, 0x9899a3

    return p0

    :cond_47
    const p0, 0x98993c

    return p0

    :cond_4b
    const p0, 0x9898d8

    return p0

    :cond_4f
    const p0, 0x989810

    return p0
.end method
