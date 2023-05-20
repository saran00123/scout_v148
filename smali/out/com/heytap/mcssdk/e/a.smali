.class public Lcom/heytap/mcssdk/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/heytap/mcssdk/e/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/heytap/mcssdk/c/a;Lcom/heytap/mcssdk/d;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "message is null , please check param of parseCommandMessage(2)"

    :goto_4
    invoke-static {p1}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez p2, :cond_d

    const-string p1, "pushService is null , please check param of parseCommandMessage(2)"

    goto :goto_4

    :cond_d
    invoke-virtual {p2}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object v0

    if-nez v0, :cond_16

    const-string p1, "pushService.getPushCallback() is null , please check param of parseCommandMessage(2)"

    goto :goto_4

    :cond_16
    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->e()I

    move-result v0

    const/16 v1, 0x3001

    if-eq v0, v1, :cond_73

    const/16 v1, 0x3002

    if-eq v0, v1, :cond_67

    const/16 v1, 0x300a

    if-eq v0, v1, :cond_57

    const/16 v1, 0x3012

    if-eq v0, v1, :cond_43

    const/16 v1, 0x3015

    if-eq v0, v1, :cond_2f

    goto :goto_8f

    :cond_2f
    invoke-virtual {p2}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p2

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/mcssdk/f/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onGetNotificationStatus(II)V

    goto :goto_8f

    :cond_43
    invoke-virtual {p2}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p2

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/mcssdk/f/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onGetPushStatus(II)V

    goto :goto_8f

    :cond_57
    invoke-virtual {p2}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p2

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onSetPushTime(ILjava/lang/String;)V

    goto :goto_8f

    :cond_67
    invoke-virtual {p2}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p2

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->g()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onUnRegister(I)V

    goto :goto_8f

    :cond_73
    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->g()I

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/heytap/mcssdk/d;->a(Ljava/lang/String;)V

    :cond_80
    invoke-virtual {p2}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p2

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/heytap/mcssdk/c/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onRegister(ILjava/lang/String;)V

    :goto_8f
    return-void
.end method

.method static synthetic a(Lcom/heytap/mcssdk/e/a;Lcom/heytap/mcssdk/c/a;Lcom/heytap/mcssdk/d;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/heytap/mcssdk/e/a;->a(Lcom/heytap/mcssdk/c/a;Lcom/heytap/mcssdk/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/heytap/msp/push/mode/BaseMode;Lcom/heytap/msp/push/callback/IDataMessageCallBackService;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/heytap/msp/push/mode/BaseMode;->getType()I

    move-result p1

    const/16 p3, 0x1009

    if-ne p1, p3, :cond_2d

    check-cast p2, Lcom/heytap/mcssdk/c/a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mcssdk-CallBackResultProcessor:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/heytap/mcssdk/c/a;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/mcssdk/f/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/heytap/mcssdk/e/a$1;

    invoke-direct {p1, p0, p2}, Lcom/heytap/mcssdk/e/a$1;-><init>(Lcom/heytap/mcssdk/e/a;Lcom/heytap/mcssdk/c/a;)V

    invoke-static {p1}, Lcom/heytap/mcssdk/f/f;->b(Ljava/lang/Runnable;)V

    :cond_2d
    return-void
.end method
