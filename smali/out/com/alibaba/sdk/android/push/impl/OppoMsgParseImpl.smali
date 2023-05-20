.class public Lcom/alibaba/sdk/android/push/impl/OppoMsgParseImpl;
.super Ljava/lang/Object;
.source "OppoMsgParseImpl.java"

# interfaces
.implements Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MPS:OppoMsgParseImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgSource()Ljava/lang/String;
    .registers 2

    const-string v0, "oppo"

    return-object v0
.end method

.method public parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "MPS:OppoMsgParseImpl"

    const/4 v2, 0x0

    if-nez p1, :cond_e

    .line 24
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "parseMsgFromIntent null"

    invoke-static {v1, v0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_e
    :try_start_e
    const-string v3, "oppo_payload"

    .line 28
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p1

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "parseMsgFromIntent"

    invoke-static {v1, v3, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1d
    return-object v2
.end method
