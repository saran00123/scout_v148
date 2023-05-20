.class Lcom/pilotlab/rollereye/P2P/P2PClient$4;
.super Ljava/lang/Thread;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;->startAudioThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 2

    .line 527
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 530
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 532
    :try_start_3
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVAPIs;-><init>()V

    .line 533
    :goto_8
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 534
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$800(Lcom/pilotlab/rollereye/P2P/P2PClient;)I

    move-result v2

    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v1, v1, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v3, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->recvAudioData:[B

    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v1, v1, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v1, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->recvAudioData:[B

    array-length v4, v1

    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v1, v1, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->audioInfo:[B

    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v1, v1, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v1, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->audioInfo:[B

    array-length v6, v1

    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v1, v1, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v7, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->audioIdx:[I

    invoke-static/range {v2 .. v7}, Lcom/tutk/IOTC/AVAPIs;->avRecvAudioData(I[BI[BI[I)I

    move-result v1

    if-lez v1, :cond_74

    .line 536
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    new-array v3, v1, [B

    iput-object v3, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->actAudioData:[B

    .line 537
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->recvAudioData:[B

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->actAudioData:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    new-instance v1, Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;

    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->actAudioData:[B

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->actAudioData:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->audioInfo:[B

    invoke-direct {v1, v2, v3, v4}, Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;-><init>([BI[B)V

    .line 539
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_8

    .line 542
    :cond_74
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$700(Lcom/pilotlab/rollereye/P2P/P2PClient;I)V

    goto :goto_8

    .line 545
    :cond_7b
    invoke-virtual {v0}, Lcom/tutk/IOTC/AVAPIs;->release()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_83
    return-void
.end method
