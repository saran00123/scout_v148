.class public Lcom/tutk/sample/AVAPI/Client$VideoThread;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/sample/AVAPI/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoThread"
.end annotation


# static fields
.field static final FRAME_INFO_SIZE:I = 0x10

.field static final VIDEO_BUF_SIZE:I = 0x186a0


# instance fields
.field private avIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/tutk/sample/AVAPI/Client$VideoThread;->avIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[%s] Start\n"

    .line 129
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 132
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVAPIs;-><init>()V

    const/16 v0, 0x10

    .line 133
    new-array v0, v0, [B

    const v2, 0x186a0

    .line 134
    new-array v2, v2, [B

    .line 135
    new-array v3, v1, [I

    .line 136
    new-array v14, v1, [I

    .line 137
    new-array v15, v1, [I

    .line 139
    :cond_29
    :goto_29
    new-array v13, v1, [I

    move-object/from16 v12, p0

    .line 140
    iget v5, v12, Lcom/tutk/sample/AVAPI/Client$VideoThread;->avIndex:I

    const v7, 0x186a0

    const/16 v11, 0x10

    move-object v6, v2

    move-object v8, v3

    move-object v9, v14

    move-object v10, v0

    move-object v12, v15

    move-object/from16 v16, v13

    invoke-static/range {v5 .. v13}, Lcom/tutk/IOTC/AVAPIs;->avRecvFrameData2(I[BI[I[I[BI[I[I)I

    move-result v5

    const/16 v6, -0x4e2c

    if-ne v5, v6, :cond_56

    const-wide/16 v5, 0x1e

    .line 146
    :try_start_45
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_29

    :catch_49
    move-exception v0

    move-object v2, v0

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_de

    :cond_56
    const/16 v6, -0x4e2e

    const/4 v7, 0x2

    if-ne v5, v6, :cond_77

    .line 153
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v7, [Ljava/lang/Object;

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aget v7, v16, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "[%s] Lost video frame number[%d]\n"

    .line 153
    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_29

    :cond_77
    const/16 v6, -0x4e2d

    if-ne v5, v6, :cond_97

    .line 157
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v7, [Ljava/lang/Object;

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aget v7, v16, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "[%s] Incomplete video frame number[%d]\n"

    .line 157
    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_29

    :cond_97
    const/16 v6, -0x4e2f

    if-ne v5, v6, :cond_af

    .line 161
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v1, [Ljava/lang/Object;

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "[%s] AV_ER_SESSION_CLOSE_BY_REMOTE\n"

    .line 161
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_de

    :cond_af
    const/16 v6, -0x4e30

    if-ne v5, v6, :cond_c7

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v1, [Ljava/lang/Object;

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "[%s] AV_ER_REMOTE_TIMEOUT_DISCONNECT\n"

    .line 165
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_de

    :cond_c7
    const/16 v6, -0x4e2a

    if-ne v5, v6, :cond_29

    .line 169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v1, [Ljava/lang/Object;

    .line 170
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "[%s] Session cant be used anymore\n"

    .line 169
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 178
    :goto_de
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "[%s] Exit\n"

    .line 178
    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method
