.class public final Lcom/vivo/push/b/n;
.super Lcom/vivo/push/b/s;
.source "OnLogReceiveCommand.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x7

    .line 18
    invoke-direct {p0, v0}, Lcom/vivo/push/b/s;-><init>(I)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/vivo/push/b/n;->d:I

    .line 14
    iput-boolean v0, p0, Lcom/vivo/push/b/n;->e:Z

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 54
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->b(Lcom/vivo/push/a;)V

    .line 55
    iget-object v0, p0, Lcom/vivo/push/b/n;->c:Ljava/lang/String;

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/vivo/push/b/n;->d:I

    const-string v1, "log_level"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    .line 57
    iget-boolean v0, p0, Lcom/vivo/push/b/n;->e:Z

    .line 1135
    iget-object v1, p1, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v1, :cond_1e

    .line 1136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    .line 1138
    :cond_1e
    iget-object p1, p1, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    const-string v1, "is_server_log"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 4

    .line 63
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->c(Lcom/vivo/push/a;)V

    const-string v0, "content"

    .line 64
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/n;->c:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "log_level"

    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vivo/push/b/n;->d:I

    .line 1174
    iget-object v1, p1, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v1, :cond_19

    goto :goto_21

    :cond_19
    iget-object p1, p1, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    const-string v1, "is_server_log"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    :goto_21
    iput-boolean v0, p0, Lcom/vivo/push/b/n;->e:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnLogCommand"

    return-object v0
.end method
