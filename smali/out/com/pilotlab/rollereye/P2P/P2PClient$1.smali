.class Lcom/pilotlab/rollereye/P2P/P2PClient$1;
.super Ljava/lang/Thread;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;->startDownloadThread()V
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

    .line 351
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v1, p0

    .line 354
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 356
    :try_start_5
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVAPIs;-><init>()V

    .line 357
    :cond_a
    :goto_a
    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 360
    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$500(Lcom/pilotlab/rollereye/P2P/P2PClient;)I

    move-result v3

    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v4, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->recvFrameData:[B

    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->recvFrameData:[B

    array-length v5, v2

    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v6, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v7, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->expectedFrameSize:[I

    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v8, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameInfo:[B

    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameInfo:[B

    array-length v9, v2

    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v10, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameInfoSize:[I

    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v11, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameIdx:[I

    invoke-static/range {v3 .. v11}, Lcom/tutk/IOTC/AVAPIs;->avRecvFrameData2(I[BI[I[I[BI[I[I)I

    move-result v2

    if-lez v2, :cond_171

    .line 363
    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v2, v3

    iget-object v4, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->expectedFrameSize:[I

    aget v4, v4, v3

    if-le v2, v4, :cond_65

    goto :goto_a

    .line 367
    :cond_65
    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameIdx:[I

    aget v2, v2, v3

    .line 369
    iget-object v4, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->expectedFrameSize:[I

    aget v5, v5, v3

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actFrameData:[B

    .line 370
    iget-object v4, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->recvFrameData:[B

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actFrameData:[B

    iget-object v6, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v6, v6, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v6, v6, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    aget v6, v6, v3

    invoke-static {v4, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget-object v4, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    aget v4, v4, v3

    add-int/2addr v4, v3

    .line 374
    :goto_9d
    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    aget v5, v5, v3

    iget-object v6, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v6, v6, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v6, v6, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->expectedFrameSize:[I

    aget v6, v6, v3

    const/4 v7, 0x1

    if-ge v5, v6, :cond_12f

    .line 375
    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v5}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$500(Lcom/pilotlab/rollereye/P2P/P2PClient;)I

    move-result v8

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v9, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->recvFrameData:[B

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->recvFrameData:[B

    array-length v10, v5

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v11, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v12, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->expectedFrameSize:[I

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v13, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameInfo:[B

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameInfo:[B

    array-length v14, v5

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v15, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameInfoSize:[I

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameIdx:[I

    move-object/from16 v16, v5

    invoke-static/range {v8 .. v16}, Lcom/tutk/IOTC/AVAPIs;->avRecvFrameData2(I[BI[I[I[BI[I[I)I

    move-result v5

    if-ltz v5, :cond_130

    .line 376
    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameIdx:[I

    aget v5, v5, v3

    if-ne v2, v5, :cond_130

    .line 377
    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    aget v5, v5, v3

    add-int/2addr v5, v4

    iget-object v6, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v6, v6, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v6, v6, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actFrameData:[B

    array-length v6, v6

    if-le v5, v6, :cond_10d

    goto :goto_130

    .line 381
    :cond_10d
    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->recvFrameData:[B

    iget-object v6, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v6, v6, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v6, v6, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actFrameData:[B

    iget-object v7, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v7, v7, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v7, v7, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    aget v7, v7, v3

    invoke-static {v5, v3, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actualFrameSize:[I

    aget v5, v5, v3

    add-int/2addr v4, v5

    goto/16 :goto_9d

    :cond_12f
    move v7, v3

    :cond_130
    :goto_130
    if-nez v7, :cond_a

    .line 393
    new-instance v2, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;

    iget-object v3, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actFrameData:[B

    iget-object v4, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->actFrameData:[B

    array-length v4, v4

    iget-object v5, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    iget-object v5, v5, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;->frameInfo:[B

    invoke-direct {v2, v3, v4, v5}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;-><init>([BI[B)V

    .line 394
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 395
    iget-object v3, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download index :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 398
    :cond_171
    iget-object v2, v1, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$700(Lcom/pilotlab/rollereye/P2P/P2PClient;I)V

    goto/16 :goto_a

    .line 401
    :cond_179
    invoke-virtual {v0}, Lcom/tutk/IOTC/AVAPIs;->release()V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17c} :catch_17d

    goto :goto_181

    :catch_17d
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_181
    return-void
.end method
