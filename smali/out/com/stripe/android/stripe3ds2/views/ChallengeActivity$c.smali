.class public final Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;
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
        "La/a/a/a/h/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;


# direct methods
.method public constructor <init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    new-instance v17, La/a/a/a/h/l;

    iget-object v2, v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v2}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/h/r;

    move-result-object v1

    iget-object v3, v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    .line 2
    iget-object v3, v3, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->c:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    .line 3
    new-instance v4, La/a/a/a/e/s;

    invoke-direct {v4}, La/a/a/a/e/s;-><init>()V

    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    move-object v3, v4

    :cond_24
    move-object v6, v3

    check-cast v6, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    iget-object v3, v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v3}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->a(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/c/c;

    move-result-object v3

    iget-object v4, v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v4}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/h/r;

    move-result-object v4

    .line 4
    iget-object v4, v4, La/a/a/a/h/r;->g:La/a/a/a/e/m$a;

    .line 5
    iget-object v5, v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    .line 6
    iget-object v5, v5, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->g:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/a/a/a/h/a;

    const-string v7, "activity"

    .line 7
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "challengeStatusReceiver"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "errorReporter"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "errorExecutorFactory"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "viewModel"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, La/a/a/a/h/r;->b()La/a/a/a/f/a;

    move-result-object v7

    invoke-virtual {v1}, La/a/a/a/h/r;->d()Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    move-result-object v8

    invoke-virtual {v1}, La/a/a/a/h/r;->c()La/a/a/a/e/f$a;

    move-result-object v9

    invoke-virtual {v1}, La/a/a/a/h/r;->e()Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    move-result-object v10

    new-instance v11, La/a/a/a/h/q;

    invoke-virtual {v1}, La/a/a/a/h/r;->e()Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    move-result-object v12

    invoke-direct {v11, v2, v12}, La/a/a/a/h/q;-><init>(Landroid/content/Context;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;)V

    invoke-virtual {v1}, La/a/a/a/h/r;->c()La/a/a/a/e/f$a;

    move-result-object v12

    invoke-virtual {v12}, La/a/a/a/e/f$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12, v3}, La/a/a/a/e/m$a;->a(Ljava/lang/String;La/a/a/a/c/c;)La/a/a/a/e/m;

    move-result-object v12

    invoke-virtual {v1}, La/a/a/a/h/r;->a()Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3c00

    move-object/from16 v1, v17

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v1 .. v16}, La/a/a/a/h/l;-><init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;La/a/a/a/h/a;La/a/a/a/f/a;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;La/a/a/a/e/f$a;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;La/a/a/a/g/a;La/a/a/a/e/m;Landroid/content/Intent;La/a/a/a/h/v;La/a/a/a/h/e;La/a/a/a/g/b;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;I)V

    return-object v17
.end method
