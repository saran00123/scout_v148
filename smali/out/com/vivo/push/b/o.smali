.class public final Lcom/vivo/push/b/o;
.super Lcom/vivo/push/b/v;
.source "OnMessageReceiveCommand.java"


# instance fields
.field protected c:Lcom/vivo/push/model/UnvarnishedMessage;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    .line 16
    invoke-direct {p0, v0}, Lcom/vivo/push/b/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/vivo/push/b/o;->c:Lcom/vivo/push/model/UnvarnishedMessage;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/vivo/push/model/UnvarnishedMessage;->unpackToJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 22
    invoke-super {p0, p1}, Lcom/vivo/push/b/v;->b(Lcom/vivo/push/a;)V

    .line 23
    iget-object v0, p0, Lcom/vivo/push/b/o;->c:Lcom/vivo/push/model/UnvarnishedMessage;

    invoke-virtual {v0}, Lcom/vivo/push/model/UnvarnishedMessage;->unpackToJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg_v1"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lcom/vivo/push/model/UnvarnishedMessage;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/vivo/push/b/o;->c:Lcom/vivo/push/model/UnvarnishedMessage;

    return-object v0
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 4

    .line 29
    invoke-super {p0, p1}, Lcom/vivo/push/b/v;->c(Lcom/vivo/push/a;)V

    const-string v0, "msg_v1"

    .line 30
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 32
    new-instance v0, Lcom/vivo/push/model/UnvarnishedMessage;

    invoke-direct {v0, p1}, Lcom/vivo/push/model/UnvarnishedMessage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/push/b/o;->c:Lcom/vivo/push/model/UnvarnishedMessage;

    .line 33
    iget-object p1, p0, Lcom/vivo/push/b/o;->c:Lcom/vivo/push/model/UnvarnishedMessage;

    .line 1022
    iget-wide v0, p0, Lcom/vivo/push/b/v;->e:J

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/vivo/push/model/UnvarnishedMessage;->setMsgId(J)V

    :cond_1d
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnMessageCommand"

    return-object v0
.end method
