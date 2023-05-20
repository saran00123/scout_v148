.class public final La/a/a/a/h/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:La/a/a/a/e/e;

.field public final c:La/a/a/a/e/g0;

.field public final d:La/a/a/a/c/c;

.field public final e:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Landroid/app/Application;La/a/a/a/e/e;La/a/a/a/e/g0;La/a/a/a/c/c;Lkotlin/coroutines/CoroutineContext;)V
    .registers 7
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/e/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # La/a/a/a/e/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "challengeActionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transactionTimer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/h/a$a;->a:Landroid/app/Application;

    iput-object p2, p0, La/a/a/a/h/a$a;->b:La/a/a/a/e/e;

    iput-object p3, p0, La/a/a/a/h/a$a;->c:La/a/a/a/e/g0;

    iput-object p4, p0, La/a/a/a/h/a$a;->d:La/a/a/a/c/c;

    iput-object p5, p0, La/a/a/a/h/a$a;->e:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .registers 9
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, La/a/a/a/h/a;

    iget-object v2, p0, La/a/a/a/h/a$a;->a:Landroid/app/Application;

    iget-object v3, p0, La/a/a/a/h/a$a;->b:La/a/a/a/e/e;

    iget-object v4, p0, La/a/a/a/h/a$a;->c:La/a/a/a/e/g0;

    iget-object v5, p0, La/a/a/a/h/a$a;->d:La/a/a/a/c/c;

    iget-object v6, p0, La/a/a/a/h/a$a;->e:Lkotlin/coroutines/CoroutineContext;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, La/a/a/a/h/a;-><init>(Landroid/app/Application;La/a/a/a/e/e;La/a/a/a/e/g0;La/a/a/a/c/c;Lkotlin/coroutines/CoroutineContext;)V

    return-object p1
.end method
