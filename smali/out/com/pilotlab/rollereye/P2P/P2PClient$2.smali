.class Lcom/pilotlab/rollereye/P2P/P2PClient$2;
.super Ljava/lang/Thread;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;->startDownloadIORecvThread()V
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

    .line 411
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 414
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 416
    :try_start_3
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVAPIs;-><init>()V

    .line 417
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 418
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$500(Lcom/pilotlab/rollereye/P2P/P2PClient;)I

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v2, v2, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->type:[I

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v3, v3, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->buffer:[B

    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->buffer:[B

    array-length v4, v4

    const/16 v5, 0x1388

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tutk/IOTC/AVAPIs;->avRecvIOCtrl(I[I[BII)I

    move-result v1

    .line 419
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63a5\u6536\u6536\u5230Download\u7ebf\u7a0b\u6536\u5230\u6570\u636e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63a5\u6536\u6536\u5230Download\u7ebf\u7a0b\u6536\u5230\u6570\u636eMax Length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    iget-object v4, v4, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;->buffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x4e30

    if-eq v1, v2, :cond_7d

    const/16 v2, -0x4e2f

    if-ne v1, v2, :cond_73

    goto :goto_7d

    :cond_73
    if-gez v1, :cond_8

    .line 425
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$700(Lcom/pilotlab/rollereye/P2P/P2PClient;I)V

    goto :goto_8

    .line 422
    :cond_7d
    :goto_7d
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 423
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->disConnect()V

    goto/16 :goto_8

    .line 428
    :cond_8c
    invoke-virtual {v0}, Lcom/tutk/IOTC/AVAPIs;->release()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_94
    return-void
.end method
