.class public final Lcom/vivo/push/b/l;
.super Lcom/vivo/push/b/s;
.source "OnDispatcherReceiveCommand.java"


# instance fields
.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x7e0

    .line 17
    invoke-direct {p0, v0}, Lcom/vivo/push/b/s;-><init>(I)V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/vivo/push/b/l;->c:I

    .line 14
    iput v0, p0, Lcom/vivo/push/b/l;->d:I

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 22
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->b(Lcom/vivo/push/a;)V

    .line 23
    iget v0, p0, Lcom/vivo/push/b/l;->c:I

    const-string v1, "key_dispatch_environment"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    .line 24
    iget v0, p0, Lcom/vivo/push/b/l;->d:I

    const-string v1, "key_dispatch_area"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 4

    .line 29
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->c(Lcom/vivo/push/a;)V

    const/4 v0, 0x1

    const-string v1, "key_dispatch_environment"

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vivo/push/b/l;->c:I

    const-string v1, "key_dispatch_area"

    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vivo/push/b/l;->d:I

    return-void
.end method
