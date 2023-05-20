.class public final Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;
.super Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;
.source "PaymentFlowPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShippingInformationViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;",
        "Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;",
        "root",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "viewBinding",
        "Lcom/stripe/android/databinding/ShippingInfoPageBinding;",
        "(Lcom/stripe/android/databinding/ShippingInfoPageBinding;)V",
        "shippingInfoWidget",
        "Lcom/stripe/android/view/ShippingInfoWidget;",
        "bind",
        "",
        "paymentSessionConfig",
        "Lcom/stripe/android/PaymentSessionConfig;",
        "shippingInformation",
        "Lcom/stripe/android/model/ShippingInformation;",
        "allowedShippingCountryCodes",
        "",
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
.field private final shippingInfoWidget:Lcom/stripe/android/view/ShippingInfoWidget;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 134
    invoke-static {v0, p1, v1}, Lcom/stripe/android/databinding/ShippingInfoPageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/stripe/android/databinding/ShippingInfoPageBinding;

    move-result-object p1

    const-string v0, "ShippingInfoPageBinding.\u2026  false\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;-><init>(Lcom/stripe/android/databinding/ShippingInfoPageBinding;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/databinding/ShippingInfoPageBinding;)V
    .registers 4
    .param p1    # Lcom/stripe/android/databinding/ShippingInfoPageBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/stripe/android/databinding/ShippingInfoPageBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    const-string v1, "viewBinding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 141
    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingInfoPageBinding;->shippingInfoWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    const-string v0, "viewBinding.shippingInfoWidget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;->shippingInfoWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/stripe/android/PaymentSessionConfig;Lcom/stripe/android/model/ShippingInformation;Ljava/util/Set;)V
    .registers 6
    .param p1    # Lcom/stripe/android/PaymentSessionConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/PaymentSessionConfig;",
            "Lcom/stripe/android/model/ShippingInformation;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paymentSessionConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedShippingCountryCodes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;->shippingInfoWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    invoke-virtual {p1}, Lcom/stripe/android/PaymentSessionConfig;->getHiddenShippingInfoFields()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->setHiddenFields(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;->shippingInfoWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    invoke-virtual {p1}, Lcom/stripe/android/PaymentSessionConfig;->getOptionalShippingInfoFields()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->setOptionalFields(Ljava/util/List;)V

    .line 150
    iget-object p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;->shippingInfoWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    .line 151
    invoke-virtual {p1, p3}, Lcom/stripe/android/view/ShippingInfoWidget;->setAllowedCountryCodes(Ljava/util/Set;)V

    .line 152
    iget-object p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;->shippingInfoWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    .line 153
    invoke-virtual {p1, p2}, Lcom/stripe/android/view/ShippingInfoWidget;->populateShippingInfo(Lcom/stripe/android/model/ShippingInformation;)V

    return-void
.end method
