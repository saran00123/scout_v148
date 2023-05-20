.class public final Lcom/vivo/push/b/j;
.super Lcom/vivo/push/b/s;
.source "OnChangePushStatusReceiveCommand.java"


# instance fields
.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xc

    .line 21
    invoke-direct {p0, v0}, Lcom/vivo/push/b/s;-><init>(I)V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/vivo/push/b/j;->c:I

    .line 17
    iput v0, p0, Lcom/vivo/push/b/j;->d:I

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 43
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->b(Lcom/vivo/push/a;)V

    .line 44
    iget v0, p0, Lcom/vivo/push/b/j;->c:I

    const-string v1, "OnChangePushStatus.EXTRA_REQ_SERVICE_STATUS"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    .line 45
    iget v0, p0, Lcom/vivo/push/b/j;->d:I

    const-string v1, "OnChangePushStatus.EXTRA_REQ_RECEIVER_STATUS"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 4

    .line 51
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->c(Lcom/vivo/push/a;)V

    .line 52
    iget v0, p0, Lcom/vivo/push/b/j;->c:I

    const-string v1, "OnChangePushStatus.EXTRA_REQ_SERVICE_STATUS"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/push/b/j;->c:I

    .line 53
    iget v0, p0, Lcom/vivo/push/b/j;->d:I

    const-string v1, "OnChangePushStatus.EXTRA_REQ_RECEIVER_STATUS"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vivo/push/b/j;->d:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnChangePushStatusCommand"

    return-object v0
.end method
