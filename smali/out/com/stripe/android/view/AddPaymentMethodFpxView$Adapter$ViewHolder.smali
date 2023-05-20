.class final Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AddPaymentMethodFpxView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\rJ\u001d\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\u0012R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewBinding",
        "Lcom/stripe/android/databinding/FpxBankItemBinding;",
        "themeConfig",
        "Lcom/stripe/android/view/ThemeConfig;",
        "(Lcom/stripe/android/databinding/FpxBankItemBinding;Lcom/stripe/android/view/ThemeConfig;)V",
        "resources",
        "Landroid/content/res/Resources;",
        "setSelected",
        "",
        "isSelected",
        "",
        "setSelected$stripe_release",
        "update",
        "fpxBank",
        "Lcom/stripe/android/view/FpxBank;",
        "isOnline",
        "update$stripe_release",
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
.field private final resources:Landroid/content/res/Resources;

.field private final themeConfig:Lcom/stripe/android/view/ThemeConfig;

.field private final viewBinding:Lcom/stripe/android/databinding/FpxBankItemBinding;


# direct methods
.method public constructor <init>(Lcom/stripe/android/databinding/FpxBankItemBinding;Lcom/stripe/android/view/ThemeConfig;)V
    .registers 4
    .param p1    # Lcom/stripe/android/databinding/FpxBankItemBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/view/ThemeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/stripe/android/databinding/FpxBankItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->viewBinding:Lcom/stripe/android/databinding/FpxBankItemBinding;

    iput-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->themeConfig:Lcom/stripe/android/view/ThemeConfig;

    .line 162
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "itemView.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final setSelected$stripe_release(Z)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->viewBinding:Lcom/stripe/android/databinding/FpxBankItemBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/FpxBankItemBinding;->name:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->themeConfig:Lcom/stripe/android/view/ThemeConfig;

    invoke-virtual {v1, p1}, Lcom/stripe/android/view/ThemeConfig;->getTextColor$stripe_release(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 179
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->viewBinding:Lcom/stripe/android/databinding/FpxBankItemBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/FpxBankItemBinding;->checkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    iget-object v1, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->themeConfig:Lcom/stripe/android/view/ThemeConfig;

    invoke-virtual {v1, p1}, Lcom/stripe/android/view/ThemeConfig;->getTintColor$stripe_release(Z)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 182
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->viewBinding:Lcom/stripe/android/databinding/FpxBankItemBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/FpxBankItemBinding;->checkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "viewBinding.checkIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    const/4 p1, 0x0

    goto :goto_2f

    :cond_2d
    const/16 p1, 0x8

    :goto_2f
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public final update$stripe_release(Lcom/stripe/android/view/FpxBank;Z)V
    .registers 8
    .param p1    # Lcom/stripe/android/view/FpxBank;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fpxBank"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->viewBinding:Lcom/stripe/android/databinding/FpxBankItemBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/FpxBankItemBinding;->name:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "viewBinding.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_17

    .line 166
    invoke-virtual {p1}, Lcom/stripe/android/view/FpxBank;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_2b

    .line 168
    :cond_17
    iget-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->resources:Landroid/content/res/Resources;

    .line 169
    sget v1, Lcom/stripe/android/R$string;->fpx_bank_offline:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 170
    invoke-virtual {p1}, Lcom/stripe/android/view/FpxBank;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 165
    :goto_2b
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->viewBinding:Lcom/stripe/android/databinding/FpxBankItemBinding;

    iget-object p2, p2, Lcom/stripe/android/databinding/FpxBankItemBinding;->icon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Lcom/stripe/android/view/FpxBank;->getBrandIconResId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method
