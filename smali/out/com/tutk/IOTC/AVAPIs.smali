.class public Lcom/tutk/IOTC/AVAPIs;
.super Ljava/lang/Object;
.source "AVAPIs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutk/IOTC/AVAPIs$avJsonCtrlRequestFn;,
        Lcom/tutk/IOTC/AVAPIs$avVSaaSUpdateContractInfoFn;,
        Lcom/tutk/IOTC/AVAPIs$avVSaaSConfigChangedFn;,
        Lcom/tutk/IOTC/AVAPIs$avChangePasswordRequestFn;,
        Lcom/tutk/IOTC/AVAPIs$avAbilityRequestFn;,
        Lcom/tutk/IOTC/AVAPIs$avIdentityArrayRequestFn;,
        Lcom/tutk/IOTC/AVAPIs$avTokenDeleteFn;,
        Lcom/tutk/IOTC/AVAPIs$avTokenRequestFn;,
        Lcom/tutk/IOTC/AVAPIs$avTokenAuthFn;,
        Lcom/tutk/IOTC/AVAPIs$avPasswordAuthFn;
    }
.end annotation


# static fields
.field public static final API_ER_ANDROID_NULL:I = -0x186a0

.field public static final AV_ER_ALREADY_INITIALIZED:I = -0x4e3f

.field public static final AV_ER_BUFPARA_MAXSIZE_INSUFF:I = -0x4e21

.field public static final AV_ER_CLEANBUF_ALREADY_CALLED:I = -0x4e3d

.field public static final AV_ER_CLIENT_EXIT:I = -0x4e32

.field public static final AV_ER_CLIENT_NOT_SUPPORT:I = -0x4e34

.field public static final AV_ER_CLIENT_NO_AVLOGIN:I = -0x4e28

.field public static final AV_ER_DASA_CLEAN_BUFFER:I = -0x4e40

.field public static final AV_ER_DATA_NOREADY:I = -0x4e2c

.field public static final AV_ER_DTLS_AUTH_FAIL:I = -0x4e49

.field public static final AV_ER_DTLS_WRONG_PWD:I = -0x4e48

.field public static final AV_ER_EXCEED_MAX_ALARM:I = -0x4e25

.field public static final AV_ER_EXCEED_MAX_CHANNEL:I = -0x4e22

.field public static final AV_ER_EXCEED_MAX_SIZE:I = -0x4e26

.field public static final AV_ER_FAIL_CREATE_DTLS:I = -0x4e43

.field public static final AV_ER_FAIL_CREATE_THREAD:I = -0x4e24

.field public static final AV_ER_FAIL_INITIALIZE_DTLS:I = -0x4e42

.field public static final AV_ER_INCOMPLETE_FRAME:I = -0x4e2d

.field public static final AV_ER_INVALID_ARG:I = -0x4e20

.field public static final AV_ER_INVALID_SID:I = -0x4e2a

.field public static final AV_ER_IOTC_CHANNEL_IN_USED:I = -0x4e3b

.field public static final AV_ER_IOTC_DEINITIALIZED:I = -0x4e3a

.field public static final AV_ER_IOTC_SESSION_CLOSED:I = -0x4e39

.field public static final AV_ER_LOSED_THIS_FRAME:I = -0x4e2e

.field public static final AV_ER_MEM_INSUFF:I = -0x4e23

.field public static final AV_ER_NOT_INITIALIZED:I = -0x4e33

.field public static final AV_ER_NOT_SUPPORT:I = -0x4e41

.field public static final AV_ER_NO_PERMISSION:I = -0x4e37

.field public static final AV_ER_NoERROR:I = 0x0

.field public static final AV_ER_REMOTE_NOT_SUPPORT:I = -0x4e45

.field public static final AV_ER_REMOTE_NOT_SUPPORT_DTLS:I = -0x4e47

.field public static final AV_ER_REMOTE_TIMEOUT_DISCONNECT:I = -0x4e30

.field public static final AV_ER_REQUEST_ALREADY_CALLED:I = -0x4e44

.field public static final AV_ER_SDK_NOT_SUPPORT_DTLS:I = -0x5356

.field public static final AV_ER_SENDIOCTRL_ALREADY_CALLED:I = -0x4e35

.field public static final AV_ER_SENDIOCTRL_EXIT:I = -0x4e36

.field public static final AV_ER_SERVER_EXIT:I = -0x4e31

.field public static final AV_ER_SERV_NO_RESPONSE:I = -0x4e27

.field public static final AV_ER_SESSION_CLOSE_BY_REMOTE:I = -0x4e2f

.field public static final AV_ER_SOCKET_QUEUE_FULL:I = -0x4e3e

.field public static final AV_ER_TIMEOUT:I = -0x4e2b

.field public static final AV_ER_TOKEN_EXCEED_MAX_SIZE:I = -0x4e46

.field public static final AV_ER_WAIT_KEY_FRAME:I = -0x4e3c

.field public static final AV_ER_WRONG_ACCPWD_LENGTH:I = -0x4e38

.field public static final AV_ER_WRONG_VIEWACCorPWD:I = -0x4e29

.field public static final IOTYPE_INNER_SND_DATA_DELAY:I = 0xff

.field public static final TIME_DELAY_DELTA:I = 0x1

.field public static final TIME_DELAY_INITIAL:I = 0x0

.field public static final TIME_DELAY_MAX:I = 0x1f4

.field public static final TIME_DELAY_MIN:I = 0x4

.field public static final TIME_SPAN_LOSED:I = 0x3e8


# instance fields
.field executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AVAPIs"

    .line 465
    invoke-static {v0}, Lcom/tutk/IOTC/util/LoadLibrary;->load(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    .line 429
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tutk/IOTC/AVAPIs;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static native AV_Set_Log_Attr(Lcom/tutk/IOTC/St_LogAttr;)I
.end method

.method public static native AV_Set_Log_Path(Ljava/lang/String;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avCheckAudioBuf(I)I
.end method

.method public static native avClientCleanAudioBuf(I)I
.end method

.method public static native avClientCleanBuf(I)I
.end method

.method public static native avClientCleanLocalBuf(I)I
.end method

.method public static native avClientCleanLocalVideoBuf(I)I
.end method

.method public static native avClientCleanVideoBuf(I)I
.end method

.method public static native avClientCleanVideoBufNB(I)I
.end method

.method public static native avClientDeleteIdentity(ILjava/lang/String;I[II)I
.end method

.method public static native avClientExit(II)V
.end method

.method public static native avClientRecvBufUsageRate(I)F
.end method

.method public static native avClientRequestChangeServerPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[II)I
.end method

.method public static native avClientRequestIdentityArray(I[Ljava/util/ArrayList;[I[II)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/util/ArrayList<",
            "Lcom/tutk/IOTC/St_AvIdentity;",
            ">;[I[II)I"
        }
    .end annotation
.end method

.method public static native avClientRequestServerAbility(I[Ljava/lang/String;I)I
.end method

.method public static native avClientRequestTokenWithIdentity(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[II)I
.end method

.method public static native avClientSetMaxBufSize(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avClientSetRecvBufMaxSize(II)I
.end method

.method public static native avClientStart(ILjava/lang/String;Ljava/lang/String;I[II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static avClientStart(I[B[BI[II)I
    .registers 12

    .line 302
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    move v0, p0

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tutk/IOTC/AVAPIs;->avClientStart(ILjava/lang/String;Ljava/lang/String;I[II)I

    move-result p0

    return p0
.end method

.method public static native avClientStart2(ILjava/lang/String;Ljava/lang/String;I[II[I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avClientStartEx(Lcom/tutk/IOTC/St_AVClientStartInConfig;Lcom/tutk/IOTC/St_AVClientStartOutConfig;)I
.end method

.method public static native avClientStop(I)V
.end method

.method public static native avDeInitialize()I
.end method

.method public static native avEnableVSaaS(Ljava/lang/String;Ljava/lang/String;Lcom/tutk/IOTC/AVAPIs$avVSaaSConfigChangedFn;Lcom/tutk/IOTC/AVAPIs$avVSaaSUpdateContractInfoFn;)I
.end method

.method public static native avGetAVApiVer()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avGetAVApiVersionString()Ljava/lang/String;
.end method

.method public static native avInitialize(I)I
.end method

.method public static native avRecvAudioData(I[BI[BI[I)I
.end method

.method public static native avRecvFrameData2(I[BI[I[I[BI[I[I)I
.end method

.method public static native avRecvIOCtrl(I[I[BII)I
.end method

.method public static native avResendBufUsageRate(I)F
.end method

.method public static native avSendAudioData(I[BI[BI)I
.end method

.method public static native avSendFrameData(I[BI[BI)I
.end method

.method public static native avSendIOCtrl(II[BI)I
.end method

.method public static native avSendIOCtrlExit(I)I
.end method

.method public static native avSendJSONCtrlRequest(ILjava/lang/String;[Ljava/lang/String;I)I
.end method

.method public static native avServExit(II)V
.end method

.method public static native avServNotifyCloudRecordStream(Ljava/lang/String;ILcom/tutk/IOTC/AVAbort;)I
.end method

.method public static native avServResetBuffer(III)I
.end method

.method public static native avServSetDelayInterval(III)I
.end method

.method public static native avServSetResendSize(II)V
.end method

.method public static native avServStart2(ILjava/lang/String;Ljava/lang/String;III)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avServStart3(ILjava/lang/String;Ljava/lang/String;III[I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avServStartEx(Lcom/tutk/IOTC/St_AVServStartInConfig;Lcom/tutk/IOTC/St_AVServStartOutConfig;)I
.end method

.method public static native avServStop(I)V
.end method

.method public static native avStatusCheck(ILcom/tutk/IOTC/St_AvStatus;)I
.end method


# virtual methods
.method public avSendIOCtrl_2(II[BI)I
    .registers 12

    .line 434
    new-instance v6, Lcom/tutk/IOTC/AVAPIs$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tutk/IOTC/AVAPIs$1;-><init>(Lcom/tutk/IOTC/AVAPIs;II[BI)V

    .line 441
    iget-object p2, p0, Lcom/tutk/IOTC/AVAPIs;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    const-wide/16 p3, 0x3e8

    .line 443
    :try_start_13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p3, p4, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_1f} :catch_32
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1f} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_1f} :catch_22
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_3a

    :catchall_20
    move-exception p1

    goto :goto_3b

    :catch_22
    move-exception p2

    .line 451
    :try_start_23
    invoke-virtual {p2}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 452
    invoke-static {p1}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrlExit(I)I

    goto :goto_39

    :catch_2a
    move-exception p2

    .line 448
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 449
    invoke-static {p1}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrlExit(I)I

    goto :goto_39

    :catch_32
    move-exception p2

    .line 445
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 446
    invoke-static {p1}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrlExit(I)I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_20

    :goto_39
    const/4 p1, -0x1

    :goto_3a
    return p1

    .line 453
    :goto_3b
    throw p1
.end method

.method public release()V
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/tutk/IOTC/AVAPIs;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    .line 461
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_7
    return-void
.end method
