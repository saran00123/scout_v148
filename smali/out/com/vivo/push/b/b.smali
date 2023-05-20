.class public final Lcom/vivo/push/b/b;
.super Lcom/vivo/push/b/c;
.source "AppCommand.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x7d6

    goto :goto_7

    :cond_5
    const/16 p1, 0x7d7

    .line 25
    :goto_7
    invoke-direct {p0, p1, p2}, Lcom/vivo/push/b/c;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/vivo/push/a;)V
    .registers 5

    .line 70
    invoke-super {p0, p1}, Lcom/vivo/push/b/c;->b(Lcom/vivo/push/a;)V

    .line 71
    iget-object v0, p0, Lcom/vivo/push/b/b;->j:Ljava/lang/String;

    const-string v1, "sdk_clients"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk_version"

    const-wide/16 v1, 0x131

    .line 72
    invoke-virtual {p1, v0, v1, v2}, Lcom/vivo/push/a;->a(Ljava/lang/String;J)V

    .line 73
    iget-object v0, p0, Lcom/vivo/push/b/b;->d:Ljava/lang/String;

    const-string v1, "BaseAppCommand.EXTRA_APPID"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/vivo/push/b/b;->c:Ljava/lang/String;

    const-string v1, "BaseAppCommand.EXTRA_APPKEY"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/vivo/push/b/b;->k:Ljava/lang/String;

    const-string v1, "PUSH_REGID"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/vivo/push/a;)V
    .registers 3

    .line 81
    invoke-super {p0, p1}, Lcom/vivo/push/b/c;->c(Lcom/vivo/push/a;)V

    const-string v0, "sdk_clients"

    .line 82
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/b;->j:Ljava/lang/String;

    const-string v0, "BaseAppCommand.EXTRA_APPID"

    .line 83
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/b;->d:Ljava/lang/String;

    const-string v0, "BaseAppCommand.EXTRA_APPKEY"

    .line 84
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/b;->c:Ljava/lang/String;

    const-string v0, "PUSH_REGID"

    .line 85
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/b;->k:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1035
    iget v1, p0, Lcom/vivo/push/g;->a:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
