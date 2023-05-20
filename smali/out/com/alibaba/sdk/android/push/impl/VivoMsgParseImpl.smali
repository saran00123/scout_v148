.class public Lcom/alibaba/sdk/android/push/impl/VivoMsgParseImpl;
.super Ljava/lang/Object;
.source "VivoMsgParseImpl.java"

# interfaces
.implements Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:VivoMsgParseImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgSource()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "vivo"

    return-object v0
.end method

.method public parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "MPS:VivoMsgParseImpl"

    const/4 v2, 0x0

    if-nez p1, :cond_e

    .line 18
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "parseMsgFromIntent null"

    invoke-static {v1, v0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_e
    :try_start_e
    const-string/jumbo v3, "vivo_payload"

    .line 22
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseMsgFromIntent msg:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p1

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "parseMsgFromIntent "

    invoke-static {v1, v3, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_34
    return-object v2
.end method
