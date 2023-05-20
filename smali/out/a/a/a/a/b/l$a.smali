.class public final La/a/a/a/b/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/a/a/a/b/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/a/a/a/b/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [La/a/a/a/b/k;

    new-instance v1, La/a/a/a/b/k$c;

    invoke-direct {v1}, La/a/a/a/b/k$c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/b/k$d;

    invoke-direct {v1}, La/a/a/a/b/k$d;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/b/k$b;

    invoke-direct {v1}, La/a/a/a/b/k$b;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, La/a/a/a/b/k$a;

    .line 1
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    invoke-direct {v1, v2}, La/a/a/a/b/k$a;-><init>(Z)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    new-instance v1, La/a/a/a/b/k$e;

    invoke-direct {v1}, La/a/a/a/b/k$e;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, La/a/a/a/b/l$a;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "La/a/a/a/b/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "securityChecks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/b/l$a;->a:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;I)V
    .registers 3

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_7

    sget-object p1, La/a/a/a/b/l$a;->b:Ljava/util/List;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-direct {p0, p1}, La/a/a/a/b/l$a;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getWarnings()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/stripe3ds2/init/Warning;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/b/l$a;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, La/a/a/a/b/k;

    invoke-virtual {v3}, La/a/a/a/b/k;->a()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/a/a/a/b/k;

    .line 1
    iget-object v2, v2, La/a/a/a/b/k;->a:Lcom/stripe/android/stripe3ds2/init/Warning;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_43
    return-object v0
.end method
