.class final Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PaymentMethodsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CardViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "binding",
        "Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;",
        "(Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;)V",
        "setPaymentMethod",
        "",
        "method",
        "Lcom/stripe/android/model/PaymentMethod;",
        "setSelected",
        "selected",
        "",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final binding:Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-static {v0, p1, v1}, Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;

    move-result-object p1

    const-string v0, "LayoutPaymentsheetPaymen\u2026rent, false\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;-><init>(Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;)V
    .registers 3
    .param p1    # Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;->binding:Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;

    return-void
.end method


# virtual methods
.method public final setPaymentMethod(Lcom/stripe/android/model/PaymentMethod;)V
    .registers 7
    .param p1    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p1, p1, Lcom/stripe/android/model/PaymentMethod;->card:Lcom/stripe/android/model/PaymentMethod$Card;

    if-eqz p1, :cond_48

    .line 102
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;->binding:Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;->brandIcon:Landroid/widget/ImageView;

    .line 103
    iget-object v1, p1, Lcom/stripe/android/model/PaymentMethod$Card;->brand:Lcom/stripe/android/model/CardBrand;

    sget-object v2, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/android/model/CardBrand;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    .line 105
    sget v1, Lcom/stripe/android/R$drawable;->stripe_ic_paymentsheet_card_visa:I

    goto :goto_1f

    .line 104
    :cond_1d
    sget v1, Lcom/stripe/android/R$drawable;->stripe_ic_paymentsheet_card_visa:I

    .line 102
    :goto_1f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;->binding:Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;->label:Landroid/widget/TextView;

    const-string v1, "binding.label"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    sget v3, Lcom/stripe/android/R$string;->paymentsheet_payment_method_item_card_number:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/stripe/android/model/PaymentMethod$Card;->last4:Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_48
    return-void
.end method

.method public final setSelected(Z)V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;->binding:Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/LayoutPaymentsheetPaymentMethodItemBinding;->checkIcon:Landroid/widget/ImageView;

    const-string v1, "binding.checkIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    const/16 p1, 0x8

    :goto_f
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
