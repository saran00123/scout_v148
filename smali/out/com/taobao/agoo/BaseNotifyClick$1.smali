.class Lcom/taobao/agoo/BaseNotifyClick$1;
.super Ljava/lang/Object;
.source "BaseNotifyClick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/agoo/BaseNotifyClick;->buildMessage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/agoo/BaseNotifyClick;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/BaseNotifyClick;Landroid/content/Intent;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    iput-object p2, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "onMessage"

    const-string v1, "accs.BaseNotifyClick"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 53
    :try_start_6
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->val$intent:Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_8} :catch_77
    .catchall {:try_start_6 .. :try_end_8} :catchall_75

    if-eqz v4, :cond_66

    .line 56
    :try_start_a
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    iget-object v5, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->val$intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/taobao/agoo/BaseNotifyClick;->access$000(Lcom/taobao/agoo/BaseNotifyClick;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_12} :catch_13
    .catchall {:try_start_a .. :try_end_12} :catchall_75

    goto :goto_14

    :catch_13
    move-object v4, v2

    .line 60
    :goto_14
    :try_start_14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    iget-object v5, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    invoke-static {v5}, Lcom/taobao/agoo/BaseNotifyClick;->access$100(Lcom/taobao/agoo/BaseNotifyClick;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_24} :catch_77
    .catchall {:try_start_14 .. :try_end_24} :catchall_75

    if-nez v5, :cond_4a

    .line 63
    :try_start_26
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->getPushParser()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    invoke-static {v6}, Lcom/taobao/agoo/BaseNotifyClick;->access$200(Lcom/taobao/agoo/BaseNotifyClick;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    invoke-static {v7}, Lcom/taobao/agoo/BaseNotifyClick;->access$100(Lcom/taobao/agoo/BaseNotifyClick;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v4, v7}, Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;->parseMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_3a} :catch_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_75

    :catch_3a
    if-nez v2, :cond_44

    .line 68
    :try_start_3c
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    iget-object v5, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/taobao/agoo/BaseNotifyClick;->onParseFailed(Landroid/content/Intent;)V

    goto :goto_66

    .line 70
    :cond_44
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    invoke-static {v4, v2}, Lcom/taobao/agoo/BaseNotifyClick;->access$300(Lcom/taobao/agoo/BaseNotifyClick;Landroid/content/Intent;)V

    goto :goto_66

    .line 74
    :cond_4a
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    iget-object v5, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/taobao/agoo/BaseNotifyClick;->onNotPushData(Landroid/content/Intent;)V

    const-string v4, "parseMsgFromNotifyListener null!!"

    const/4 v5, 0x2

    .line 75
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "source"

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    invoke-static {v7}, Lcom/taobao/agoo/BaseNotifyClick;->access$100(Lcom/taobao/agoo/BaseNotifyClick;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_66} :catch_77
    .catchall {:try_start_3c .. :try_end_66} :catchall_75

    :cond_66
    :goto_66
    if-eqz v2, :cond_8d

    .line 84
    :try_start_68
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    invoke-virtual {v4, v2}, Lcom/taobao/agoo/BaseNotifyClick;->onMessage(Landroid/content/Intent;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6d} :catch_6e

    goto :goto_8d

    :catch_6e
    move-exception v2

    .line 87
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8d

    :catchall_75
    move-exception v4

    goto :goto_8e

    :catch_77
    move-exception v4

    :try_start_78
    const-string v5, "buildMessage"

    .line 79
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v4, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_75

    if-eqz v2, :cond_8d

    .line 84
    :try_start_81
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    invoke-virtual {v4, v2}, Lcom/taobao/agoo/BaseNotifyClick;->onMessage(Landroid/content/Intent;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_86} :catch_87

    goto :goto_8d

    :catch_87
    move-exception v2

    .line 87
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_8d
    :goto_8d
    return-void

    :goto_8e
    if-eqz v2, :cond_9c

    .line 84
    :try_start_90
    iget-object v5, p0, Lcom/taobao/agoo/BaseNotifyClick$1;->this$0:Lcom/taobao/agoo/BaseNotifyClick;

    invoke-virtual {v5, v2}, Lcom/taobao/agoo/BaseNotifyClick;->onMessage(Landroid/content/Intent;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_95} :catch_96

    goto :goto_9c

    :catch_96
    move-exception v2

    .line 87
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 90
    :cond_9c
    :goto_9c
    throw v4
.end method
