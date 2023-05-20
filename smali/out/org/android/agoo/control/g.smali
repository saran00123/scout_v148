.class Lorg/android/agoo/control/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/android/agoo/control/AgooFactory;


# direct methods
.method constructor <init>(Lorg/android/agoo/control/AgooFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 784
    iput-object p1, p0, Lorg/android/agoo/control/g;->c:Lorg/android/agoo/control/AgooFactory;

    iput-object p2, p0, Lorg/android/agoo/control/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/android/agoo/control/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "9"

    const-string v1, "AgooFactory"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 789
    :try_start_6
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "dismissMessage"

    const/4 v5, 0x4

    .line 790
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "msgid"

    aput-object v6, v5, v2

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/android/agoo/control/g;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "extData"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/android/agoo/control/g;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    const-string v4, "accs"

    .line 794
    iget-object v5, p0, Lorg/android/agoo/control/g;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string v0, "messageId == null"

    .line 795
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 798
    :cond_3b
    new-instance v5, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v5}, Lorg/android/agoo/common/MsgDO;-><init>()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_40} :catch_65
    .catchall {:try_start_6 .. :try_end_40} :catchall_63

    .line 799
    :try_start_40
    iget-object v3, p0, Lorg/android/agoo/control/g;->a:Ljava/lang/String;

    iput-object v3, v5, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 800
    iget-object v3, p0, Lorg/android/agoo/control/g;->b:Ljava/lang/String;

    iput-object v3, v5, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    .line 801
    iput-object v4, v5, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    .line 802
    iput-object v0, v5, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    .line 804
    iget-object v3, p0, Lorg/android/agoo/control/g;->c:Lorg/android/agoo/control/AgooFactory;

    iget-object v4, p0, Lorg/android/agoo/control/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/android/agoo/control/AgooFactory;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_53} :catch_60
    .catchall {:try_start_40 .. :try_end_53} :catchall_5d

    .line 809
    iget-object v0, p0, Lorg/android/agoo/control/g;->c:Lorg/android/agoo/control/AgooFactory;

    invoke-static {v0}, Lorg/android/agoo/control/AgooFactory;->access$200(Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/control/NotifManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    goto :goto_87

    :catchall_5d
    move-exception v0

    move-object v3, v5

    goto :goto_88

    :catch_60
    move-exception v0

    move-object v3, v5

    goto :goto_66

    :catchall_63
    move-exception v0

    goto :goto_88

    :catch_65
    move-exception v0

    .line 806
    :goto_66
    :try_start_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickMessage,error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_66 .. :try_end_7c} :catchall_63

    if-eqz v3, :cond_87

    .line 809
    iget-object v0, p0, Lorg/android/agoo/control/g;->c:Lorg/android/agoo/control/AgooFactory;

    invoke-static {v0}, Lorg/android/agoo/control/AgooFactory;->access$200(Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/control/NotifManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    :cond_87
    :goto_87
    return-void

    :goto_88
    if-eqz v3, :cond_93

    iget-object v1, p0, Lorg/android/agoo/control/g;->c:Lorg/android/agoo/control/AgooFactory;

    invoke-static {v1}, Lorg/android/agoo/control/AgooFactory;->access$200(Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/control/NotifManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    .line 811
    :cond_93
    throw v0
.end method
