.class public final Lcom/stripe/android/view/PaymentFlowPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PaymentFlowPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentFlowPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentFlowPagerAdapter.kt\ncom/stripe/android/view/PaymentFlowPagerAdapter\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,189:1\n33#2,3:190\n33#2,3:193\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentFlowPagerAdapter.kt\ncom/stripe/android/view/PaymentFlowPagerAdapter\n*L\n49#1,3:190\n55#1,3:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001@B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0010\rJ \u0010.\u001a\u00020\u000c2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0016J\u0008\u00105\u001a\u000202H\u0016J\u0010\u00106\u001a\u0002022\u0006\u00107\u001a\u000204H\u0016J\u0017\u00108\u001a\u0004\u0018\u00010\u00172\u0006\u00101\u001a\u000202H\u0000\u00a2\u0006\u0002\u00089J\u0012\u0010:\u001a\u0004\u0018\u00010;2\u0006\u00101\u001a\u000202H\u0016J\u0018\u0010<\u001a\u0002042\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0016J\u0018\u0010=\u001a\u00020\u000f2\u0006\u00103\u001a\u00020>2\u0006\u0010?\u001a\u000204H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000b8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR(\u0010#\u001a\u0004\u0018\u00010\"2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\"@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R7\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00162\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00168@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008,\u0010!\u001a\u0004\u0008)\u0010\u0019\"\u0004\u0008*\u0010+R\u000e\u0010-\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentFlowPagerAdapter;",
        "Landroidx/viewpager/widget/PagerAdapter;",
        "context",
        "Landroid/content/Context;",
        "paymentSessionConfig",
        "Lcom/stripe/android/PaymentSessionConfig;",
        "allowedShippingCountryCodes",
        "",
        "",
        "onShippingMethodSelectedCallback",
        "Lkotlin/Function1;",
        "Lcom/stripe/android/model/ShippingMethod;",
        "",
        "(Landroid/content/Context;Lcom/stripe/android/PaymentSessionConfig;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V",
        "value",
        "",
        "isShippingInfoSubmitted",
        "isShippingInfoSubmitted$stripe_release",
        "()Z",
        "setShippingInfoSubmitted$stripe_release",
        "(Z)V",
        "pages",
        "",
        "Lcom/stripe/android/view/PaymentFlowPage;",
        "getPages",
        "()Ljava/util/List;",
        "<set-?>",
        "selectedShippingMethod",
        "getSelectedShippingMethod$stripe_release",
        "()Lcom/stripe/android/model/ShippingMethod;",
        "setSelectedShippingMethod$stripe_release",
        "(Lcom/stripe/android/model/ShippingMethod;)V",
        "selectedShippingMethod$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "Lcom/stripe/android/model/ShippingInformation;",
        "shippingInformation",
        "getShippingInformation$stripe_release",
        "()Lcom/stripe/android/model/ShippingInformation;",
        "setShippingInformation$stripe_release",
        "(Lcom/stripe/android/model/ShippingInformation;)V",
        "shippingMethods",
        "getShippingMethods$stripe_release",
        "setShippingMethods$stripe_release",
        "(Ljava/util/List;)V",
        "shippingMethods$delegate",
        "shouldRecreateShippingMethodsScreen",
        "destroyItem",
        "collection",
        "Landroid/view/ViewGroup;",
        "position",
        "",
        "view",
        "",
        "getCount",
        "getItemPosition",
        "obj",
        "getPageAt",
        "getPageAt$stripe_release",
        "getPageTitle",
        "",
        "instantiateItem",
        "isViewFromObject",
        "Landroid/view/View;",
        "o",
        "PaymentFlowViewHolder",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final allowedShippingCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private isShippingInfoSubmitted:Z

.field private final onShippingMethodSelectedCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/android/model/ShippingMethod;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

.field private final selectedShippingMethod$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shippingInformation:Lcom/stripe/android/model/ShippingInformation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shippingMethods$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldRecreateShippingMethodsScreen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/stripe/android/view/PaymentFlowPagerAdapter;

    const/4 v3, 0x0

    const-string v4, "shippingMethods"

    const-string v5, "getShippingMethods$stripe_release()Ljava/util/List;"

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/stripe/android/view/PaymentFlowPagerAdapter;

    const-string v4, "selectedShippingMethod"

    const-string v5, "getSelectedShippingMethod$stripe_release()Lcom/stripe/android/model/ShippingMethod;"

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/stripe/android/PaymentSessionConfig;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/PaymentSessionConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/stripe/android/PaymentSessionConfig;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/model/ShippingMethod;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentSessionConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedShippingCountryCodes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onShippingMethodSelectedCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

    iput-object p3, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->allowedShippingCountryCodes:Ljava/util/Set;

    iput-object p4, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->onShippingMethodSelectedCallback:Lkotlin/jvm/functions/Function1;

    .line 49
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 190
    new-instance p2, Lcom/stripe/android/view/PaymentFlowPagerAdapter$$special$$inlined$observable$1;

    invoke-direct {p2, p1, p1, p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/stripe/android/view/PaymentFlowPagerAdapter;)V

    check-cast p2, Lkotlin/properties/ReadWriteProperty;

    .line 192
    iput-object p2, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shippingMethods$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 55
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 193
    new-instance p1, Lcom/stripe/android/view/PaymentFlowPagerAdapter$$special$$inlined$observable$2;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/stripe/android/view/PaymentFlowPagerAdapter;)V

    check-cast p1, Lkotlin/properties/ReadWriteProperty;

    .line 195
    iput-object p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->selectedShippingMethod$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/stripe/android/PaymentSessionConfig;Ljava/util/Set;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_8

    .line 19
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p3

    :cond_8
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    .line 20
    sget-object p4, Lcom/stripe/android/view/PaymentFlowPagerAdapter$1;->INSTANCE:Lcom/stripe/android/view/PaymentFlowPagerAdapter$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;-><init>(Landroid/content/Context;Lcom/stripe/android/PaymentSessionConfig;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getShouldRecreateShippingMethodsScreen$p(Lcom/stripe/android/view/PaymentFlowPagerAdapter;)Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shouldRecreateShippingMethodsScreen:Z

    return p0
.end method

.method public static final synthetic access$setShouldRecreateShippingMethodsScreen$p(Lcom/stripe/android/view/PaymentFlowPagerAdapter;Z)V
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shouldRecreateShippingMethodsScreen:Z

    return-void
.end method

.method private final getPages()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/PaymentFlowPage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lcom/stripe/android/view/PaymentFlowPage;

    .line 25
    sget-object v1, Lcom/stripe/android/view/PaymentFlowPage;->ShippingInfo:Lcom/stripe/android/view/PaymentFlowPage;

    .line 26
    iget-object v2, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

    invoke-virtual {v2}, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    move-object v1, v3

    :goto_10
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    sget-object v1, Lcom/stripe/android/view/PaymentFlowPage;->ShippingMethod:Lcom/stripe/android/view/PaymentFlowPage;

    .line 30
    iget-object v4, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

    invoke-virtual {v4}, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

    invoke-virtual {v4}, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-boolean v4, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->isShippingInfoSubmitted:Z

    if-eqz v4, :cond_2b

    :cond_2a
    move v2, v5

    :cond_2b
    if-eqz v2, :cond_2e

    goto :goto_2f

    :cond_2e
    move-object v1, v3

    :goto_2f
    aput-object v1, v0, v5

    .line 24
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "collection"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 97
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1d

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/stripe/android/view/PaymentFlowPage;->ShippingMethod:Lcom/stripe/android/view/PaymentFlowPage;

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shouldRecreateShippingMethodsScreen:Z

    if-eqz v0, :cond_1d

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shouldRecreateShippingMethodsScreen:Z

    const/4 p1, -0x2

    goto :goto_21

    .line 121
    :cond_1d
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    :goto_21
    return p1
.end method

.method public final getPageAt$stripe_release(I)Lcom/stripe/android/view/PaymentFlowPage;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/view/PaymentFlowPage;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/view/PaymentFlowPage;

    invoke-virtual {p1}, Lcom/stripe/android/view/PaymentFlowPage;->getTitleResId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final getSelectedShippingMethod$stripe_release()Lcom/stripe/android/model/ShippingMethod;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->selectedShippingMethod$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/model/ShippingMethod;

    return-object v0
.end method

.method public final getShippingInformation$stripe_release()Lcom/stripe/android/model/ShippingInformation;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    return-object v0
.end method

.method public final getShippingMethods$stripe_release()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/ShippingMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shippingMethods$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/android/view/PaymentFlowPage;

    .line 63
    sget-object v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentFlowPage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 68
    new-instance v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingMethodViewHolder;

    invoke-direct {v0, p1}, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingMethodViewHolder;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;

    goto :goto_32

    :cond_25
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 65
    :cond_2b
    new-instance v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;

    invoke-direct {v0, p1}, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;

    .line 72
    :goto_32
    instance-of v1, v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;

    if-eqz v1, :cond_43

    .line 73
    move-object v1, v0

    check-cast v1, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;

    .line 74
    iget-object v2, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

    .line 75
    iget-object v3, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    .line 76
    iget-object v4, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->allowedShippingCountryCodes:Ljava/util/Set;

    .line 73
    invoke-virtual {v1, v2, v3, v4}, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingInformationViewHolder;->bind(Lcom/stripe/android/PaymentSessionConfig;Lcom/stripe/android/model/ShippingInformation;Ljava/util/Set;)V

    goto :goto_57

    .line 79
    :cond_43
    instance-of v1, v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingMethodViewHolder;

    if-eqz v1, :cond_57

    .line 80
    move-object v1, v0

    check-cast v1, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingMethodViewHolder;

    .line 81
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->getShippingMethods$stripe_release()Ljava/util/List;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->getSelectedShippingMethod$stripe_release()Lcom/stripe/android/model/ShippingMethod;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->onShippingMethodSelectedCallback:Lkotlin/jvm/functions/Function1;

    .line 80
    invoke-virtual {v1, v2, v3, v4}, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder$ShippingMethodViewHolder;->bind(Ljava/util/List;Lcom/stripe/android/model/ShippingMethod;Lkotlin/jvm/functions/Function1;)V

    .line 87
    :cond_57
    :goto_57
    iget-object v1, v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    iget-object p1, v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object p1, v0, Lcom/stripe/android/view/PaymentFlowPagerAdapter$PaymentFlowViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isShippingInfoSubmitted$stripe_release()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->isShippingInfoSubmitted:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public final setSelectedShippingMethod$stripe_release(Lcom/stripe/android/model/ShippingMethod;)V
    .registers 5
    .param p1    # Lcom/stripe/android/model/ShippingMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->selectedShippingMethod$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShippingInfoSubmitted$stripe_release(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->isShippingInfoSubmitted:Z

    .line 44
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setShippingInformation$stripe_release(Lcom/stripe/android/model/ShippingInformation;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 37
    iput-object p1, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    .line 38
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setShippingMethods$stripe_release(Ljava/util/List;)V
    .registers 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/ShippingMethod;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->shippingMethods$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/PaymentFlowPagerAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
