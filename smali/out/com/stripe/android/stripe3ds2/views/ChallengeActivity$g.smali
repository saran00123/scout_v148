.class public final Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "La/a/a/a/h/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;


# direct methods
.method public constructor <init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 12

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    new-instance v8, La/a/a/a/h/a$a;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v2, "application"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, La/a/a/a/e/e$a;

    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v2}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/h/r;

    move-result-object v2

    .line 2
    iget-object v2, v2, La/a/a/a/h/r;->c:La/a/a/a/f/a;

    .line 3
    iget-object v5, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v5}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->a(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/c/c;

    move-result-object v5

    iget-object v6, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v6}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/h/r;

    move-result-object v6

    .line 4
    iget-object v6, v6, La/a/a/a/h/r;->f:La/a/a/a/e/f$b;

    .line 5
    iget-object v7, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v7}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/h/r;

    move-result-object v7

    .line 6
    iget-object v7, v7, La/a/a/a/h/r;->e:La/a/a/a/e/f$a;

    .line 7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v9

    const-string v10, "creqData"

    .line 8
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "errorReporter"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "creqExecutorFactory"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "creqExecutorConfig"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "workContext"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7, v5}, La/a/a/a/e/f$b;->a(La/a/a/a/e/f$a;La/a/a/a/c/c;)La/a/a/a/e/f;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6, v9}, La/a/a/a/e/e$a;-><init>(La/a/a/a/f/a;La/a/a/a/c/c;La/a/a/a/e/f;Lkotlin/coroutines/CoroutineContext;)V

    .line 9
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    .line 10
    iget-object v2, v2, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, La/a/a/a/e/g0;

    .line 11
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v2}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->a(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/c/c;

    move-result-object v6

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, La/a/a/a/h/a$a;-><init>(Landroid/app/Application;La/a/a/a/e/e;La/a/a/a/e/g0;La/a/a/a/c/c;Lkotlin/coroutines/CoroutineContext;)V

    invoke-direct {v0, v1, v8}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, La/a/a/a/h/a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProvider(\n     \u2026ityViewModel::class.java]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La/a/a/a/h/a;

    return-object v0
.end method
