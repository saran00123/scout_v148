.class public final Lcom/vivo/push/c/h;
.super Lcom/vivo/push/c/o;
.source "OnDispatcherReceiveTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 5

    .line 21
    check-cast p1, Lcom/vivo/push/b/l;

    .line 1035
    iget v0, p1, Lcom/vivo/push/b/l;->c:I

    .line 1047
    iget p1, p1, Lcom/vivo/push/b/l;->d:I

    .line 24
    invoke-static {}, Lcom/vivo/push/util/v;->b()Lcom/vivo/push/util/v;

    move-result-object v1

    const-string v2, "key_dispatch_environment"

    invoke-virtual {v1, v2, v0}, Lcom/vivo/push/util/v;->a(Ljava/lang/String;I)V

    .line 25
    invoke-static {}, Lcom/vivo/push/util/v;->b()Lcom/vivo/push/util/v;

    move-result-object v0

    const-string v1, "key_dispatch_area"

    invoke-virtual {v0, v1, p1}, Lcom/vivo/push/util/v;->a(Ljava/lang/String;I)V

    return-void
.end method
