.class public final Lorg/android/agoo/intent/IntentUtil;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final AGOO_COMMAND:Ljava/lang/String; = "command"

.field private static final INTENT_FROM_STARTACTIVITY_COMMAND:Ljava/lang/String; = ".intent.action.startActivity.COMMAND"

.field private static final INTENT_FROM_THIRDPUSH_COMMAND:Ljava/lang/String; = ".intent.thirdPush.action.COMMAND"

.field private static final TAG:Ljava/lang/String; = "IntentUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6

    const/4 v0, 0x0

    .line 27
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_39

    .line 28
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".intent.action.startActivity.COMMAND"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.taobao.agoo.AgooStartActivityService"

    .line 31
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "command"

    .line 32
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_36} :catch_37

    goto :goto_45

    :catch_37
    move-exception p0

    goto :goto_3b

    :catch_39
    move-exception p0

    move-object v1, v0

    :goto_3b
    const/4 p1, 0x0

    .line 36
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "IntentUtil"

    const-string v0, "createComandIntent"

    invoke-static {p2, v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_45
    return-object v1
.end method

.method public static final getThirdPushCommand(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_23

    .line 44
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".intent.thirdPush.action.COMMAND"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IntentUtil"

    const-string v2, "getAgooCommand"

    invoke-static {v1, v2, p0, v0}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method
