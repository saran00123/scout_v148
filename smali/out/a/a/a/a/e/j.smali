.class public final La/a/a/a/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/e/j$a;
    }
.end annotation


# static fields
.field public static final d:La/a/a/a/e/j$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:La/a/a/a/h/r;

.field public final b:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La/a/a/a/e/j$a;

    .line 1
    invoke-direct {v0}, La/a/a/a/e/j$a;-><init>()V

    .line 2
    sput-object v0, La/a/a/a/e/j;->d:La/a/a/a/e/j$a;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;La/a/a/a/f/a;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;La/a/a/a/e/f$a;La/a/a/a/e/f$b;La/a/a/a/e/m$a;Landroid/content/Intent;I)V
    .registers 22
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/f/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # La/a/a/a/e/f$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La/a/a/a/e/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # La/a/a/a/e/m$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    const-string v2, "host"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "creqData"

    move-object v5, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cresData"

    move-object v4, p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "uiCustomization"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "creqExecutorConfig"

    move-object/from16 v7, p5

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "creqExecutorFactory"

    move-object/from16 v8, p6

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "errorExecutorFactory"

    move-object/from16 v9, p7

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, La/a/a/a/e/j;->b:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    move/from16 v1, p9

    iput v1, v0, La/a/a/a/e/j;->c:I

    new-instance v2, La/a/a/a/h/r;

    move-object v3, v2

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v3 .. v11}, La/a/a/a/h/r;-><init>(Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;La/a/a/a/f/a;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;La/a/a/a/e/f$a;La/a/a/a/e/f$b;La/a/a/a/e/m$a;Landroid/content/Intent;I)V

    iput-object v2, v0, La/a/a/a/e/j;->a:La/a/a/a/h/r;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La/a/a/a/e/j;->b:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    invoke-virtual {v1}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;->getActivity$3ds2sdk_release()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, La/a/a/a/e/j;->a:La/a/a/a/h/r;

    const/16 v2, 0x8

    .line 1
    new-array v2, v2, [Lkotlin/Pair;

    iget-object v3, v1, La/a/a/a/h/r;->c:La/a/a/a/f/a;

    const-string v4, "extra_creq_data"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, La/a/a/a/h/r;->b:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    const-string v4, "extra_cres_data"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, v1, La/a/a/a/h/r;->d:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    const-string v4, "extra_ui_customization"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, v1, La/a/a/a/h/r;->e:La/a/a/a/e/f$a;

    const-string v4, "extra_creq_executor_config"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, v1, La/a/a/a/h/r;->f:La/a/a/a/e/f$b;

    const-string v4, "extra_creq_executor_factory"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, v1, La/a/a/a/h/r;->g:La/a/a/a/e/m$a;

    const-string v4, "extra_error_executor_factory"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, v1, La/a/a/a/h/r;->h:Landroid/content/Intent;

    const-string v4, "extra_challenge_completion_intent"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v1, v1, La/a/a/a/h/r;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "extra_challenge_completion_request_code"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v2, v3

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(host.activity, Ch\u2026utExtras(args.toBundle())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()V
    .registers 4

    iget v0, p0, La/a/a/a/e/j;->c:I

    if-lez v0, :cond_10

    iget-object v0, p0, La/a/a/a/e/j;->b:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    invoke-virtual {p0}, La/a/a/a/e/j;->a()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, La/a/a/a/e/j;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;->startActivityForResult$3ds2sdk_release(Landroid/content/Intent;I)V

    goto :goto_24

    :cond_10
    iget-object v0, p0, La/a/a/a/e/j;->b:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    invoke-virtual {p0}, La/a/a/a/e/j;->a()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "challengeIntent\n        \u2026_ACTIVITY_FORWARD_RESULT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;->startActivity$3ds2sdk_release(Landroid/content/Intent;)V

    :goto_24
    return-void
.end method
