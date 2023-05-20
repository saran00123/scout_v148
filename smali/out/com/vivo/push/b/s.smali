.class public Lcom/vivo/push/b/s;
.super Lcom/vivo/push/g;
.source "OnReceiveCommand.java"


# instance fields
.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/vivo/push/g;-><init>(I)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/vivo/push/b/s;->g:I

    return-void
.end method


# virtual methods
.method protected b(Lcom/vivo/push/a;)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    const-string v1, "req_id"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/vivo/push/b/s;->g:I

    const-string v1, "status_msg_code"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected c(Lcom/vivo/push/a;)V
    .registers 4

    const-string v0, "req_id"

    .line 47
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/s;->f:Ljava/lang/String;

    .line 48
    iget v0, p0, Lcom/vivo/push/b/s;->g:I

    const-string v1, "status_msg_code"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vivo/push/b/s;->g:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnReceiveCommand"

    return-object v0
.end method
