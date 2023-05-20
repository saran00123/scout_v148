.class final Lcom/alibaba/sdk/android/push/register/ReporterFactory$3;
.super Ljava/lang/Object;
.source "ReporterFactory.java"

# interfaces
.implements Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/register/ReporterFactory;->getPushParser()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 12

    const-string v0, "body"

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 161
    :try_start_6
    invoke-static {p1}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5, p3, v2, v3}, Lorg/android/agoo/control/AgooFactory;->msgReceiverPreHandler([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;

    move-result-object p3

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "begin parse EncryptedMsg"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-static {v4}, Lorg/android/agoo/control/AgooFactory;->parseEncryptedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 166
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 168
    :cond_2f
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v4, "parse EncryptedMsg fail, empty"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :goto_3a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    invoke-static {p1}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object p1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const-string p3, "2"

    invoke-virtual {p1, p2, p3}, Lorg/android/agoo/control/AgooFactory;->saveMsg([BLjava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_4f} :catch_50

    return-object v0

    :catch_50
    move-exception p1

    .line 175
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->access$100()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    const-string v0, "agoo factory parse EncryptedMsg fail"

    invoke-static {p2, v0, p1, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method
