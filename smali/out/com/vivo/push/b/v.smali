.class public abstract Lcom/vivo/push/b/v;
.super Lcom/vivo/push/b/s;
.source "OnVerifyReceiveCommand.java"


# instance fields
.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/vivo/push/b/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/vivo/push/a;)V
    .registers 5

    .line 39
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->b(Lcom/vivo/push/a;)V

    .line 40
    iget-object v0, p0, Lcom/vivo/push/b/v;->d:Ljava/lang/String;

    const-string v1, "OnVerifyCallBackCommand.EXTRA_SECURITY_CONTENT"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-wide v0, p0, Lcom/vivo/push/b/v;->e:J

    const-string v2, "notify_id"

    invoke-virtual {p1, v2, v0, v1}, Lcom/vivo/push/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method protected c(Lcom/vivo/push/a;)V
    .registers 5

    .line 46
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->c(Lcom/vivo/push/a;)V

    const-string v0, "OnVerifyCallBackCommand.EXTRA_SECURITY_CONTENT"

    .line 47
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/v;->d:Ljava/lang/String;

    const-string v0, "notify_id"

    const-wide/16 v1, -0x1

    .line 48
    invoke-virtual {p1, v0, v1, v2}, Lcom/vivo/push/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/push/b/v;->e:J

    return-void
.end method
