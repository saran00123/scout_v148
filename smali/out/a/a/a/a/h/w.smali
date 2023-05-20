.class public final La/a/a/a/h/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/h/w$a;
    }
.end annotation


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;

.field public final b:La/a/a/a/g/b;

.field public final c:La/a/a/a/h/w$a;


# direct methods
.method public constructor <init>(La/a/a/a/c/c;Lkotlin/coroutines/CoroutineContext;)V
    .registers 5
    .param p1    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorReporter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La/a/a/a/g/b$a;->c:La/a/a/a/g/b$a;

    new-instance v1, La/a/a/a/h/w$a$a;

    invoke-direct {v1, p1}, La/a/a/a/h/w$a$a;-><init>(La/a/a/a/c/c;)V

    invoke-direct {p0, p2, v0, v1}, La/a/a/a/h/w;-><init>(Lkotlin/coroutines/CoroutineContext;La/a/a/a/g/b;La/a/a/a/h/w$a;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;La/a/a/a/g/b;La/a/a/a/h/w$a;)V
    .registers 5
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/g/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # La/a/a/a/h/w$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "workContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageSupplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/h/w;->a:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, La/a/a/a/h/w;->b:La/a/a/a/g/b;

    iput-object p3, p0, La/a/a/a/h/w;->c:La/a/a/a/h/w$a;

    return-void
.end method
