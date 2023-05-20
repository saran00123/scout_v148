.class public Lcom/meizu/cloud/pushsdk/handler/a/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;->a(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;->a(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;->b(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;->b(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;->c(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;->c(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_38
    move-object v0, v1

    :goto_39
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;->d(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;->d(Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;)Ljava/lang/String;

    move-result-object v1

    :cond_49
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;
    .registers 1

    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/a/c/d$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/meizu/cloud/pushsdk/d/a/c;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/d/a/c;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->a:Ljava/lang/String;

    const-string v2, "task_id"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->b:Ljava/lang/String;

    const-string v2, "seq_id"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->c:Ljava/lang/String;

    const-string v2, "push_timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->d:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/d/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/a/c/d;->d:Ljava/lang/String;

    return-object v0
.end method
