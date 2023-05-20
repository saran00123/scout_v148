.class Lcom/pilotlab/rollereye/P2P/P2PClient$7;
.super Ljava/lang/Thread;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;->startMicThread()V
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

    .line 623
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$7;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 626
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 628
    :try_start_3
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tutk/IOTC/AVAPIs;-><init>(Z)V

    .line 629
    :goto_9
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$7;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_65

    if-eqz v1, :cond_61

    .line 632
    :try_start_11
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$7;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$1000(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;

    if-nez v1, :cond_24

    goto :goto_9

    .line 636
    :cond_24
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$7;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->getData_length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--voip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$7;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$800(Lcom/pilotlab/rollereye/P2P/P2PClient;)I

    move-result v2

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->getData()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->getData_length()I

    move-result v4

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->getInfo()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->getInfo_length()I

    move-result v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/tutk/IOTC/AVAPIs;->avSendAudioData(I[BI[BI)I
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5b} :catch_65

    goto :goto_9

    :catch_5c
    move-exception v1

    .line 639
    :try_start_5d
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 642
    :cond_61
    invoke-virtual {v0}, Lcom/tutk/IOTC/AVAPIs;->release()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception v0

    .line 644
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_69
    return-void
.end method
