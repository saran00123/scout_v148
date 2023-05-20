.class public final Lcom/vivo/push/c/u;
.super Lcom/vivo/push/e;
.source "UnbindAppSendCommandTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/vivo/push/e;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 6

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/vivo/push/b/c;

    .line 31
    iget-object v1, p0, Lcom/vivo/push/c/u;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;)Lcom/vivo/push/model/b;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 33
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    .line 1114
    iget-object v0, v0, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    const/16 v1, 0x3ed

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/vivo/push/d;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 2023
    :cond_1a
    iget-object v3, v1, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 2038
    iget-boolean v1, v1, Lcom/vivo/push/model/b;->e:Z

    if-eqz v1, :cond_33

    .line 38
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    .line 2114
    iget-object v0, v0, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    const/16 v1, 0x3ec

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/vivo/push/d;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 39
    new-instance p1, Lcom/vivo/push/b/e;

    invoke-direct {p1}, Lcom/vivo/push/b/e;-><init>()V

    goto :goto_45

    .line 41
    :cond_33
    invoke-static {v0}, Lcom/vivo/push/util/q;->a(Lcom/vivo/push/b/c;)I

    move-result v1

    if-eqz v1, :cond_45

    .line 43
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    .line 3114
    iget-object v0, v0, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/vivo/push/d;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/vivo/push/c/u;->a:Landroid/content/Context;

    invoke-static {v0, v3, p1}, Lcom/vivo/push/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/push/g;)V

    return-void
.end method
