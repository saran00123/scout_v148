.class final Lcom/stripe/android/view/Stripe3ds2CompletionActivity$flowOutcome$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Stripe3ds2CompletionActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/Stripe3ds2CompletionActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/view/Stripe3ds2CompletionActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/Stripe3ds2CompletionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/view/Stripe3ds2CompletionActivity$flowOutcome$2;->this$0:Lcom/stripe/android/view/Stripe3ds2CompletionActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .registers 4

    .line 17
    iget-object v0, p0, Lcom/stripe/android/view/Stripe3ds2CompletionActivity$flowOutcome$2;->this$0:Lcom/stripe/android/view/Stripe3ds2CompletionActivity;

    invoke-virtual {v0}, Lcom/stripe/android/view/Stripe3ds2CompletionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "extra_outcome"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    goto :goto_2f

    .line 25
    :cond_11
    invoke-static {}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->values()[Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    move-result-object v1

    aget-object v0, v1, v0

    sget-object v1, Lcom/stripe/android/view/Stripe3ds2CompletionActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_30

    .line 35
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_28
    const/4 v0, 0x2

    goto :goto_2f

    :pswitch_2a
    const/4 v0, 0x4

    goto :goto_2f

    :pswitch_2c
    const/4 v0, 0x3

    goto :goto_2f

    :pswitch_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/stripe/android/view/Stripe3ds2CompletionActivity$flowOutcome$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
