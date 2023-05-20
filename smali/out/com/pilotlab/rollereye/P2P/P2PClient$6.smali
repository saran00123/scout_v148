.class Lcom/pilotlab/rollereye/P2P/P2PClient$6;
.super Ljava/lang/Thread;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;->startIORecvThread()V
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

    .line 591
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 594
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 597
    :try_start_3
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVAPIs;-><init>()V

    .line 598
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 599
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$800(Lcom/pilotlab/rollereye/P2P/P2PClient;)I

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->type:[I

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->buffer:[B

    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->buffer:[B

    array-length v4, v4

    const/16 v5, 0x1388

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tutk/IOTC/AVAPIs;->avRecvIOCtrl(I[I[BII)I

    move-result v1

    .line 600
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63a5\u6536\u6536\u5230\u6570\u636e\u957f\u5ea6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63a5\u6536\u6536\u5230\u6570\u636eMax Length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->buffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x4e30

    if-eq v1, v2, :cond_a0

    const/16 v2, -0x4e2f

    if-ne v1, v2, :cond_73

    goto :goto_a0

    :cond_73
    if-lez v1, :cond_97

    .line 606
    new-array v2, v1, [B

    .line 607
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->type:[I

    aget v3, v3, v4

    invoke-direct {v1, v3, v2}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(I[B)V

    .line 609
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 611
    :cond_97
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$700(Lcom/pilotlab/rollereye/P2P/P2PClient;I)V

    goto/16 :goto_8

    .line 603
    :cond_a0
    :goto_a0
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 604
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->disConnect()V

    goto/16 :goto_8

    .line 614
    :cond_af
    invoke-virtual {v0}, Lcom/tutk/IOTC/AVAPIs;->release()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b7
    return-void
.end method
