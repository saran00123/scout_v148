.class public Lcom/huawei/updatesdk/a/a/d/h/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/a/a/d/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->a:Landroid/content/Context;

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/updatesdk/a/a/d/h/c;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->c:Ljava/util/Set;

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_29
    iget-boolean v1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->e:Z

    const-string v2, ","

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/a/a/d/h/c;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/huawei/updatesdk/a/a/d/e;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    invoke-static {v0, v2}, Lcom/huawei/updatesdk/a/a/d/e;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/huawei/updatesdk/a/a/d/h/b$b;
    .registers 2

    iput-boolean p1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->b:Z

    return-object p0
.end method

.method public a()Lcom/huawei/updatesdk/a/a/d/h/b;
    .registers 4

    new-instance v0, Lcom/huawei/updatesdk/a/a/d/h/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/updatesdk/a/a/d/h/b;-><init>(Lcom/huawei/updatesdk/a/a/d/h/b$a;)V

    invoke-static {}, Lcom/huawei/updatesdk/a/a/d/h/c;->f()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/huawei/updatesdk/a/a/d/e;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/a/a/d/h/b;->a(Lcom/huawei/updatesdk/a/a/d/h/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/updatesdk/a/a/d/h/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/a/a/d/h/b;->a(Lcom/huawei/updatesdk/a/a/d/h/b;I)I

    invoke-direct {p0}, Lcom/huawei/updatesdk/a/a/d/h/b$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/a/a/d/h/b;->b(Lcom/huawei/updatesdk/a/a/d/h/b;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->b:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/huawei/updatesdk/a/a/d/h/b$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/updatesdk/a/a/d/h/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/a/a/d/h/b;->c(Lcom/huawei/updatesdk/a/a/d/h/b;Ljava/lang/String;)Ljava/lang/String;

    :cond_34
    return-object v0
.end method
