.class public Lcom/taobao/accs/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final APPKEY_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final APPSECRET_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final AUTH_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final AUTH_PARAM_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final DM_APPKEY_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final DM_DEVICEID_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final DM_PACKAGENAME_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final DM_TAIR_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final ERROR_SHOULD_NEVER_HAPPEN:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final MESSAGE_HOST_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final MESSAGE_TOO_LARGE:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORKSDK_ERROR_CODE:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORKSDK_INAPP_EXCEPTION_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORKSDK_SPDY_RES_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_ARGS_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final PARAMETER_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVER_UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVICE_NOT_AVAILABLE:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVIER_LOW_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SESSION_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field private static final a:Lcom/alibaba/sdk/android/error/ErrorDefine;

.field public static final codes:[Lcom/alibaba/sdk/android/error/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 19
    new-instance v0, Lcom/alibaba/sdk/android/error/ErrorDefine;

    new-instance v1, Lcom/alibaba/sdk/android/error/IntCodeGenerator;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/error/IntCodeGenerator;-><init>()V

    const-string v2, "EACCS"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/error/CodeGenerator;)V

    sput-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    .line 21
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u6210\u529f"

    .line 22
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 26
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "300"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u901a\u9053\u672a\u5efa\u7acb"

    .line 27
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u5148\u521d\u59cb\u5316\uff0cbindApp\uff0c\u518d\u8c03\u7528\u5176\u5b83api"

    .line 28
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 32
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u9759\u9ed8\u8fde\u63a5\u4e2d\u65ad\uff0c\u65e0\u6cd5\u53d1\u9001\u6d88\u606f"

    .line 33
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORK_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 36
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u53c2\u6570\u9519\u8bef,\u53d1\u9001\u7684msg\u4e3anull"

    .line 37
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->PARAMETER_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 40
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    .line 41
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u5173\u6ce8\u9519\u8bef\u4fe1\u606f\u4e2d\u7684\u670d\u52a1\u8fd4\u56de\u6570\u636e\uff0c\u5e76\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301\u540c\u5b66\u786e\u8ba4\u539f\u56e0"

    .line 42
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->SERVICE_NOT_AVAILABLE:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 45
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-4"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5355\u6b21\u53d1\u9001\u6570\u636e\u8fc7\u5927"

    .line 46
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u51cf\u5c11\u4e00\u6b21\u53d1\u9001\u7684\u6570\u636e\u91cf\uff0c\u5c01\u88c5\u4e4b\u540e\u603b\u7684\u6570\u636e\u91cf\u8981\u5c0f\u4e8e16KB"

    .line 47
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->MESSAGE_TOO_LARGE:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 50
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-5"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u670d\u52a1\u5730\u5740\u4e3anull"

    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5\u4e0b\u521d\u59cb\u5316\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    .line 52
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->MESSAGE_HOST_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 55
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-6"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u957f\u8fde\u63a5\u8ba4\u8bc1\u53c2\u6570\u9519\u8bef"

    .line 56
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5\u521d\u59cb\u5316\u53c2\u6570\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    .line 57
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->AUTH_PARAM_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 60
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-7"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u957f\u8fde\u63a5\u8ba4\u8bc1\u5f02\u5e38"

    .line 61
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u67e5\u770b\u9519\u8bef\u4fe1\u606f\uff0c\u786e\u8ba4\u5177\u4f53\u5f02\u5e38\u4fe1\u606f"

    .line 62
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->AUTH_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 65
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "-8"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u53d1\u9001\u6570\u636e\u5f02\u5e38"

    .line 66
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 70
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-9"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u6d88\u606f\u8d85\u65f6"

    .line 71
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u9700\u8981\u7ed3\u5408\u5177\u4f53\u662f\u67e5\u770b\u4e3a\u4ec0\u4e48\u8d85\u65f6"

    .line 72
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 75
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-10"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u957f\u8fde\u63a5\u65ad\u8fde"

    .line 76
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u65ad\u8fde\u9700\u8981\u67e5\u770b\u4e4b\u524d\u7684\u65e5\u5fd7"

    .line 77
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 80
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-11"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u957f\u8fde\u63a5\u53d1\u9001\u6570\u636e\u5931\u8d25"

    .line 81
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u4e00\u822c\u4e3a\u957f\u8fde\u63a5\u5efa\u8fde\u5931\u8d25\u9020\u6210\uff0c\u9700\u8981\u770b\u65e5\u5fd7\u5206\u6790"

    .line 82
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->SESSION_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 85
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-12"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u957f\u8fde\u63a5ping\u8d85\u65f6"

    .line 86
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 89
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-13"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc"

    .line 90
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 91
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 94
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-14"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "appKey\u4e0d\u5b58\u5728"

    .line 95
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5\u521d\u59cb\u5316\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    .line 96
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->APPKEY_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 99
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "-15"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "appSecret\u4e0d\u5b58\u5728"

    .line 100
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->APPSECRET_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 105
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "70008"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u957f\u8fde\u63a5\u53d1\u9001\u961f\u5217\u5df2\u6ee1"

    .line 106
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u786e\u8ba4\u662f\u5426\u6709\u9ad8\u5e76\u53d1\u53d1\u9001\u6d88\u606f\uff0c\u5982\u679c\u6709\uff0c\u8bf7\u9650\u5236\u53d1\u9001\u9891\u6b21"

    .line 107
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 110
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "70020"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u4f4e\u7ea7\u522b\u9650\u6d41"

    .line 111
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u548c\u90e8\u7f72\u540c\u5b66\u786e\u8ba4\u9650\u6d41\u7b56\u7565"

    .line 112
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->SERVIER_LOW_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 115
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "70021"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u9ad8\u7ea7\u522b\u9650\u6d41,\u4e0d\u53d1\u9001"

    .line 116
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 120
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "70023"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u9632\u5237\u89e3\u5c01\u540e\u89e6\u53d1\u7684\u9650\u6d41\uff0c\u4e0d\u53d1\u9001"

    .line 121
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 126
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "102"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bbe\u5907\u65e0\u6548"

    .line 127
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u5982\u679c\u662f\u6d4b\u8bd5\u65f6\u53d1\u73b0\u7684\uff0c\u8bf7\u6e05\u9664\u5e94\u7528\u6570\u636e\u91cd\u65b0\u5c1d\u8bd5"

    .line 128
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->DM_TAIR_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 131
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v3, "302"

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->DM_DEVICEID_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 136
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "303"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "appkey\u914d\u7f6e\u9519\u8bef"

    .line 137
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5appKey\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    .line 138
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->DM_APPKEY_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 141
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "304"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5305\u540d\u9519\u8bef"

    .line 142
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5appKey\u548c\u5e94\u7528\u5305\u540d\u662f\u5426\u5339\u914d"

    .line 143
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->DM_PACKAGENAME_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 147
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-20"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u8fd4\u56de\u9519\u8bef"

    .line 148
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u5173\u6ce8\u4e0b\u9519\u8bef\u4fe1\u606f\u4e2d\u7684\u670d\u52a1\u8fd4\u56de\u7684\u9519\u8bef\u7801\uff0c\u5e76\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301\u540c\u5b66\u786e\u8ba4\u539f\u56e0"

    .line 149
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->SERVER_UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 152
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-21"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5e95\u5c42sdk\u8fde\u63a5\u5f02\u5e38\u9519\u8bef"

    .line 153
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u5173\u6ce8\u4e0b\u9519\u8bef\u4fe1\u606f\u4e2d\u7684\u5e95\u5c42sdk\u8fd4\u56de\u7684\u9519\u8bef\u4fe1\u606f\uff0c\u5e76\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301\u540c\u5b66\u786e\u8ba4\u539f\u56e0"

    .line 154
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORKSDK_INAPP_EXCEPTION_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 157
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "-22"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u5e95\u5c42sdk\u8fde\u63a5\u5173\u95ed"

    .line 158
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 162
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "-23"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u53d1\u9001\u6570\u636e\u8fd4\u56de\u9519\u8bef"

    .line 163
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORKSDK_SPDY_RES_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 167
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "-24"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u5e95\u5c42\u9519\u8bef\u7801"

    .line 168
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORKSDK_ERROR_CODE:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 172
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-25"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u4e0d\u5e94\u8be5\u53d1\u751f\u7684\u9519\u8bef"

    .line 173
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u5173\u6ce8\u4e0b\u9519\u8bef\u4fe1\u606f\uff0c\u68c0\u67e5\u521d\u59cb\u5316\u662f\u5426\u5b58\u5728\u9519\u8bef"

    .line 174
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->ERROR_SHOULD_NEVER_HAPPEN:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 177
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-26"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5efa\u8fde\u53c2\u6570\u9519\u8bef"

    .line 178
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORK_INAPP_ARGS_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 181
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-27"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5efa\u8fde\u8d85\u65f6"

    .line 182
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 185
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-28"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5efa\u8fde\u5931\u8d25"

    .line 186
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 189
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-29"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u5730\u5740\u4e0d\u5b58\u5728"

    .line 190
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u7f51\u7edc\u4e0b\u65e0\u6cd5\u89e3\u6790\u957f\u94fe\u63a5\u5730\u5740"

    .line 191
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 193
    sget-object v0, Lcom/taobao/accs/a;->a:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-30"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5efa\u8fde\u5f02\u5e38"

    .line 194
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a;->NETWORK_INAPP_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v0, 0x24

    .line 198
    new-array v0, v0, [Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v1, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORK_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->PARAMETER_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->SERVICE_NOT_AVAILABLE:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->MESSAGE_TOO_LARGE:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->MESSAGE_HOST_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->AUTH_PARAM_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->AUTH_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->SESSION_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->APPKEY_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->APPSECRET_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->SERVIER_LOW_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->DM_TAIR_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->DM_DEVICEID_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->DM_APPKEY_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->DM_PACKAGENAME_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->SERVER_UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORKSDK_INAPP_EXCEPTION_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORKSDK_SPDY_RES_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORKSDK_ERROR_CODE:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->ERROR_SHOULD_NEVER_HAPPEN:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORK_INAPP_ARGS_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/a;->NETWORK_INAPP_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/accs/a;->codes:[Lcom/alibaba/sdk/android/error/ErrorCode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/alibaba/sdk/android/error/ErrorCode;
    .registers 4

    const/16 v0, 0x66

    if-eq p0, v0, :cond_37

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_34

    packed-switch p0, :pswitch_data_3a

    .line 228
    sget-object v0, Lcom/taobao/accs/a;->SERVER_UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p0

    return-object p0

    .line 226
    :pswitch_2b
    sget-object p0, Lcom/taobao/accs/a;->DM_PACKAGENAME_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    .line 224
    :pswitch_2e
    sget-object p0, Lcom/taobao/accs/a;->DM_APPKEY_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    .line 222
    :pswitch_31
    sget-object p0, Lcom/taobao/accs/a;->DM_DEVICEID_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    .line 218
    :cond_34
    sget-object p0, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    .line 220
    :cond_37
    sget-object p0, Lcom/taobao/accs/a;->DM_TAIR_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    :pswitch_data_3a
    .packed-switch 0x12e
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method
