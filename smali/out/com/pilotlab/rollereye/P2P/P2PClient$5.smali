.class Lcom/pilotlab/rollereye/P2P/P2PClient$5;
.super Ljava/lang/Thread;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;->startIOSendThread()V
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

    .line 554
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 557
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 559
    :try_start_3
    new-instance v0, Lcom/tutk/IOTC/AVAPIs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tutk/IOTC/AVAPIs;-><init>(Z)V

    .line 560
    :goto_9
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 562
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$900(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    if-nez v1, :cond_27

    .line 564
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$700(Lcom/pilotlab/rollereye/P2P/P2PClient;I)V

    goto :goto_9

    :cond_27
    const/4 v2, -0x1

    .line 569
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getResend()I

    move-result v3

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->RESEND_OFF:I

    if-ne v3, v4, :cond_47

    .line 570
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$800(Lcom/pilotlab/rollereye/P2P/P2PClient;)I

    move-result v2

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v3

    .line 571
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getData()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getData_length()I

    move-result v5

    .line 570
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl_2(II[BI)I

    move-result v2

    goto :goto_65

    .line 572
    :cond_47
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getResend()I

    move-result v3

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->RESEND_ON:I

    if-ne v3, v4, :cond_65

    .line 573
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$500(Lcom/pilotlab/rollereye/P2P/P2PClient;)I

    move-result v2

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v3

    .line 574
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getData()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getData_length()I

    move-result v5

    .line 573
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl_2(II[BI)I

    move-result v2

    :cond_65
    :goto_65
    if-gez v2, :cond_82

    .line 577
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start_ipcam_stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 578
    :cond_82
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start_ipcam_stream success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_9c
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioCotrol_list size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-static {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->access$900(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 582
    :cond_e0
    invoke-virtual {v0}, Lcom/tutk/IOTC/AVAPIs;->release()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e3} :catch_e4

    goto :goto_e8

    :catch_e4
    move-exception v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e8
    return-void
.end method
