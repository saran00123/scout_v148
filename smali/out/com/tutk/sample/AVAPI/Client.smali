.class public Lcom/tutk/sample/AVAPI/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutk/sample/AVAPI/Client$AudioThread;,
        Lcom/tutk/sample/AVAPI/Client$VideoThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .registers 7

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "StreamClient start..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Initialize2(I)I

    move-result v1

    .line 14
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "IOTC_Initialize2() ret = %d\n"

    invoke-virtual {v2, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    if-eqz v1, :cond_28

    .line 16
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IOTCAPIs_Device exit...!!\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    :cond_28
    const/4 v1, 0x3

    .line 21
    invoke-static {v1}, Lcom/tutk/IOTC/AVAPIs;->avInitialize(I)I

    .line 22
    invoke-static {}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Get_SessionID()I

    move-result v1

    if-gez v1, :cond_42

    .line 24
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "IOTC_Get_SessionID error code [%d]\n"

    invoke-virtual {p0, v0, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    .line 27
    :cond_42
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "IOTC_Get_SessionID code [%d]\n"

    invoke-virtual {v2, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 28
    invoke-static {p0, v1}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_ByUID_Parallel(Ljava/lang/String;I)I

    .line 29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v0

    const-string p0, "Step 2: call IOTC_Connect_ByUID_Parallel(%s).......\n"

    invoke-virtual {v2, p0, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 34
    new-instance p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;

    invoke-direct {p0}, Lcom/tutk/IOTC/St_AVClientStartInConfig;-><init>()V

    .line 35
    new-instance v2, Lcom/tutk/IOTC/St_AVClientStartOutConfig;

    invoke-direct {v2}, Lcom/tutk/IOTC/St_AVClientStartOutConfig;-><init>()V

    .line 37
    iput v1, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->iotc_session_id:I

    .line 38
    iput v0, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->iotc_channel_id:I

    const/16 v4, 0x14

    .line 39
    iput v4, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->timeout_sec:I

    const-string v4, "admin"

    .line 40
    iput-object v4, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->account_or_identity:Ljava/lang/String;

    const-string v4, "888888"

    .line 41
    iput-object v4, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->password_or_token:Ljava/lang/String;

    .line 42
    iput v3, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->resend:I

    .line 43
    iput v0, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->security_mode:I

    .line 44
    iput v0, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->auth_type:I

    .line 46
    invoke-static {p0, v2}, Lcom/tutk/IOTC/AVAPIs;->avClientStartEx(Lcom/tutk/IOTC/St_AVClientStartInConfig;Lcom/tutk/IOTC/St_AVClientStartOutConfig;)I

    move-result p0

    .line 47
    iget v4, v2, Lcom/tutk/IOTC/St_AVClientStartOutConfig;->resend:I

    .line 48
    iget v2, v2, Lcom/tutk/IOTC/St_AVClientStartOutConfig;->server_type:I

    .line 49
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "Step 2: call avClientStartEx(%d).......\n"

    invoke-virtual {v2, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    if-gez p0, :cond_a8

    .line 52
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "avClientStartEx failed[%d]\n"

    invoke-virtual {v1, p0, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    .line 56
    :cond_a8
    invoke-static {p0}, Lcom/tutk/sample/AVAPI/Client;->startIpcamStream(I)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 57
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tutk/sample/AVAPI/Client$VideoThread;

    invoke-direct {v3, p0}, Lcom/tutk/sample/AVAPI/Client$VideoThread;-><init>(I)V

    const-string v4, "Video Thread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 59
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/tutk/sample/AVAPI/Client$AudioThread;

    invoke-direct {v4, p0}, Lcom/tutk/sample/AVAPI/Client$AudioThread;-><init>(I)V

    const-string v5, "Audio Thread"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 62
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 64
    :try_start_cc
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_cf
    .catch Ljava/lang/InterruptedException; {:try_start_cc .. :try_end_cf} :catch_de

    .line 70
    :try_start_cf
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_d2
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_e9

    :catch_d3
    move-exception p0

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catch_de
    move-exception p0

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_e9
    :goto_e9
    invoke-static {p0}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 78
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "avClientStop OK\n"

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 79
    invoke-static {v1}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Close(I)V

    .line 80
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IOTC_Session_Close OK\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 81
    invoke-static {}, Lcom/tutk/IOTC/AVAPIs;->avDeInitialize()I

    .line 82
    invoke-static {}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_DeInitialize()I

    .line 83
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StreamClient exit...\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public static startIpcamStream(I)Z
    .registers 7

    .line 87
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVAPIs;-><init>()V

    const/4 v0, 0x2

    .line 88
    new-array v1, v0, [B

    const/16 v2, 0xff

    invoke-static {p0, v2, v1, v0}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl(II[BI)I

    move-result v0

    const-string v1, "start_ipcam_stream failed[%d]\n"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_22

    .line 91
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return v3

    :cond_22
    const/16 v0, 0x1ff

    const/16 v4, 0x8

    .line 99
    new-array v5, v4, [B

    invoke-static {p0, v0, v5, v4}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl(II[BI)I

    move-result v0

    if-gez v0, :cond_3c

    .line 102
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return v3

    :cond_3c
    const/16 v0, 0x300

    .line 107
    new-array v5, v4, [B

    invoke-static {p0, v0, v5, v4}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl(II[BI)I

    move-result p0

    if-gez p0, :cond_54

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return v3

    :cond_54
    return v2
.end method
