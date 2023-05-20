.class public final Lcom/vivo/push/b/q;
.super Lcom/vivo/push/b/v;
.source "OnNotifyArrivedReceiveCommand.java"


# instance fields
.field protected c:Lcom/vivo/push/model/InsideNotificationItem;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 18
    invoke-direct {p0, v0}, Lcom/vivo/push/b/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/vivo/push/model/InsideNotificationItem;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/vivo/push/b/q;->c:Lcom/vivo/push/model/InsideNotificationItem;

    return-object v0
.end method

.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 27
    invoke-super {p0, p1}, Lcom/vivo/push/b/v;->b(Lcom/vivo/push/a;)V

    .line 28
    iget-object v0, p0, Lcom/vivo/push/b/q;->c:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-static {v0}, Lcom/vivo/push/util/o;->b(Lcom/vivo/push/model/InsideNotificationItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/q;->h:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/vivo/push/b/q;->h:Ljava/lang/String;

    const-string v1, "notification_v1"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/vivo/push/b/q;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/push/b/q;->c:Lcom/vivo/push/model/InsideNotificationItem;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    invoke-static {v0}, Lcom/vivo/push/util/o;->b(Lcom/vivo/push/model/InsideNotificationItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/vivo/push/b/q;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 4

    .line 35
    invoke-super {p0, p1}, Lcom/vivo/push/b/v;->c(Lcom/vivo/push/a;)V

    const-string v0, "notification_v1"

    .line 36
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/q;->h:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/vivo/push/b/q;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 38
    iget-object p1, p0, Lcom/vivo/push/b/q;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/vivo/push/util/o;->a(Ljava/lang/String;)Lcom/vivo/push/model/InsideNotificationItem;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/q;->c:Lcom/vivo/push/model/InsideNotificationItem;

    .line 39
    iget-object p1, p0, Lcom/vivo/push/b/q;->c:Lcom/vivo/push/model/InsideNotificationItem;

    if-eqz p1, :cond_24

    .line 1022
    iget-wide v0, p0, Lcom/vivo/push/b/v;->e:J

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/vivo/push/model/InsideNotificationItem;->setMsgId(J)V

    :cond_24
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnNotifyArrivedCommand"

    return-object v0
.end method
