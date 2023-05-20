.class public Lcom/tutk/sample/AVAPI/Client$AudioThread;
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
    name = "AudioThread"
.end annotation


# static fields
.field static final AUDIO_BUF_SIZE:I = 0x400

.field static final FRAME_INFO_SIZE:I = 0x10


# instance fields
.field private avIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Lcom/tutk/sample/AVAPI/Client$AudioThread;->avIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[%s] Start\n"

    .line 195
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 198
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVAPIs;-><init>()V

    const/16 v0, 0x10

    .line 199
    new-array v0, v0, [B

    const/16 v2, 0x400

    .line 200
    new-array v2, v2, [B

    .line 202
    :goto_22
    iget v3, p0, Lcom/tutk/sample/AVAPI/Client$AudioThread;->avIndex:I

    invoke-static {v3}, Lcom/tutk/IOTC/AVAPIs;->avCheckAudioBuf(I)I

    move-result v3

    if-gez v3, :cond_45

    .line 206
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "[%s] avCheckAudioBuf() failed: %d\n"

    .line 206
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_ae

    :cond_45
    const/4 v5, 0x3

    if-ge v3, v5, :cond_59

    const-wide/16 v5, 0x78

    .line 211
    :try_start_4a
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_22

    :catch_4e
    move-exception v0

    .line 214
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_ae

    .line 219
    :cond_59
    new-array v10, v1, [I

    .line 220
    iget v5, p0, Lcom/tutk/sample/AVAPI/Client$AudioThread;->avIndex:I

    const/16 v7, 0x400

    const/16 v9, 0x10

    move-object v6, v2

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Lcom/tutk/IOTC/AVAPIs;->avRecvAudioData(I[BI[BI[I)I

    move-result v3

    const/16 v5, -0x4e2f

    if-ne v3, v5, :cond_7f

    .line 225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v1, [Ljava/lang/Object;

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "[%s] AV_ER_SESSION_CLOSE_BY_REMOTE\n"

    .line 225
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_ae

    :cond_7f
    const/16 v5, -0x4e30

    if-ne v3, v5, :cond_97

    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v1, [Ljava/lang/Object;

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "[%s] AV_ER_REMOTE_TIMEOUT_DISCONNECT\n"

    .line 229
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_ae

    :cond_97
    const/16 v5, -0x4e2a

    if-ne v3, v5, :cond_c2

    .line 233
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v1, [Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "[%s] Session cant be used anymore\n"

    .line 233
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 246
    :goto_ae
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v1, [Ljava/lang/Object;

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "[%s] Exit\n"

    .line 246
    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    :cond_c2
    const/16 v5, -0x4e2e

    goto/16 :goto_22
.end method
