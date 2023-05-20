.class public final Lcom/stripe/android/view/PaymentMethodsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaymentMethodsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder;,
        Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;,
        Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;,
        Lcom/stripe/android/view/PaymentMethodsAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentMethodsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodsAdapter.kt\ncom/stripe/android/view/PaymentMethodsAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,338:1\n256#2,2:339\n318#2,7:341\n1#3:348\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentMethodsAdapter.kt\ncom/stripe/android/view/PaymentMethodsAdapter\n*L\n42#1,2:339\n144#1,7:341\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0019\u0008\u0000\u0018\u0000 M2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004MNOPBQ\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010,\u001a\u00020-2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u0010(\u001a\u00020)H\u0002J\u0015\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u00083J\u0010\u00104\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u0012H\u0002J\u0008\u00106\u001a\u00020\u0012H\u0016J\u0010\u00107\u001a\u0002082\u0006\u00105\u001a\u00020\u0012H\u0016J\u0010\u00109\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u0012H\u0016J\u0015\u0010:\u001a\u00020\u001b2\u0006\u00105\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008;J\u0010\u0010<\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u0012H\u0002J\u0019\u0010=\u001a\u0004\u0018\u00010\u00122\u0006\u00102\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008>\u0010?J\u0010\u0010@\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u0012H\u0002J\u0010\u0010A\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u0012H\u0002J\u0018\u0010B\u001a\u0002012\u0006\u0010C\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0012H\u0016J\u0018\u0010D\u001a\u00020\u00022\u0006\u0010(\u001a\u00020)2\u0006\u0010E\u001a\u00020\u0012H\u0016J\u0015\u0010F\u001a\u0002012\u0006\u00105\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008GJ\u0015\u0010H\u001a\u0002012\u0006\u00102\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008IJ\u001b\u0010J\u001a\u0002012\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0006H\u0000\u00a2\u0006\u0002\u0008KJ\u0010\u0010L\u001a\u0002012\u0006\u00105\u001a\u00020\u0012H\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u001b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentMethodsAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "intentArgs",
        "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;",
        "addableTypes",
        "",
        "Lcom/stripe/android/model/PaymentMethod$Type;",
        "initiallySelectedPaymentMethodId",
        "",
        "shouldShowGooglePay",
        "",
        "useGooglePay",
        "canDeletePaymentMethods",
        "workContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;Ljava/util/List;Ljava/lang/String;ZZZLkotlin/coroutines/CoroutineContext;)V",
        "googlePayCount",
        "",
        "listener",
        "Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;",
        "getListener$stripe_release",
        "()Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;",
        "setListener$stripe_release",
        "(Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;)V",
        "paymentMethods",
        "",
        "Lcom/stripe/android/model/PaymentMethod;",
        "getPaymentMethods$stripe_release",
        "()Ljava/util/List;",
        "selectedPaymentMethod",
        "getSelectedPaymentMethod$stripe_release",
        "()Lcom/stripe/android/model/PaymentMethod;",
        "selectedPaymentMethodId",
        "getSelectedPaymentMethodId$stripe_release",
        "()Ljava/lang/String;",
        "setSelectedPaymentMethodId$stripe_release",
        "(Ljava/lang/String;)V",
        "createAddCardPaymentMethodViewHolder",
        "Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddCardPaymentMethodViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "createAddFpxPaymentMethodViewHolder",
        "Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddFpxPaymentMethodViewHolder;",
        "createGooglePayViewHolder",
        "Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$GooglePayViewHolder;",
        "createPaymentMethodViewHolder",
        "Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;",
        "deletePaymentMethod",
        "",
        "paymentMethod",
        "deletePaymentMethod$stripe_release",
        "getAddableTypesPosition",
        "position",
        "getItemCount",
        "getItemId",
        "",
        "getItemViewType",
        "getPaymentMethodAtPosition",
        "getPaymentMethodAtPosition$stripe_release",
        "getPaymentMethodIndex",
        "getPosition",
        "getPosition$stripe_release",
        "(Lcom/stripe/android/model/PaymentMethod;)Ljava/lang/Integer;",
        "isGooglePayPosition",
        "isPaymentMethodsPosition",
        "onBindViewHolder",
        "holder",
        "onCreateViewHolder",
        "viewType",
        "onPositionClicked",
        "onPositionClicked$stripe_release",
        "resetPaymentMethod",
        "resetPaymentMethod$stripe_release",
        "setPaymentMethods",
        "setPaymentMethods$stripe_release",
        "updateSelectedPaymentMethod",
        "Companion",
        "Listener",
        "ViewHolder",
        "ViewType",
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
.field public static final Companion:Lcom/stripe/android/view/PaymentMethodsAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GOOGLE_PAY_ITEM_ID:J


# instance fields
.field private final addableTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;"
        }
    .end annotation
.end field

.field private final canDeletePaymentMethods:Z

.field private final googlePayCount:I

.field private final intentArgs:Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

.field private listener:Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedPaymentMethodId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shouldShowGooglePay:Z

.field private final useGooglePay:Z

.field private final workContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/view/PaymentMethodsAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/PaymentMethodsAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/PaymentMethodsAdapter;->Companion:Lcom/stripe/android/view/PaymentMethodsAdapter$Companion;

    const-string v0, "pm_google_pay"

    .line 335
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/stripe/android/view/PaymentMethodsAdapter;->GOOGLE_PAY_ITEM_ID:J

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;Ljava/util/List;Ljava/lang/String;ZZZLkotlin/coroutines/CoroutineContext;)V
    .registers 9
    .param p1    # Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    const-string v0, "intentArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addableTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->intentArgs:Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    iput-object p2, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->addableTypes:Ljava/util/List;

    iput-boolean p4, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->shouldShowGooglePay:Z

    iput-boolean p5, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->useGooglePay:Z

    iput-boolean p6, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->canDeletePaymentMethods:Z

    iput-object p7, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->workContext:Lkotlin/coroutines/CoroutineContext;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->selectedPaymentMethodId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    iget-boolean p3, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->shouldShowGooglePay:Z

    if-eqz p3, :cond_39

    goto :goto_3a

    :cond_39
    const/4 p2, 0x0

    :goto_3a
    if-eqz p2, :cond_41

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_42

    :cond_41
    const/4 p2, 0x0

    :goto_42
    iput p2, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->googlePayCount:I

    .line 50
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;Ljava/util/List;Ljava/lang/String;ZZZLkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_b

    .line 29
    sget-object v0, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p2

    :goto_c
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    .line 30
    check-cast v1, Ljava/lang/String;

    goto :goto_15

    :cond_14
    move-object v1, p3

    :goto_15
    and-int/lit8 v2, p8, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, p4

    :goto_1d
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_22

    goto :goto_23

    :cond_22
    move v3, p5

    :goto_23
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    move v4, p6

    :goto_2a
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_35

    .line 34
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    goto :goto_36

    :cond_35
    move-object v5, p7

    :goto_36
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move p6, v2

    move p7, v3

    move p8, v4

    move-object p9, v5

    invoke-direct/range {p2 .. p9}, Lcom/stripe/android/view/PaymentMethodsAdapter;-><init>(Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;Ljava/util/List;Ljava/lang/String;ZZZLkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic access$getGOOGLE_PAY_ITEM_ID$cp()J
    .registers 2

    .line 27
    sget-wide v0, Lcom/stripe/android/view/PaymentMethodsAdapter;->GOOGLE_PAY_ITEM_ID:J

    return-wide v0
.end method

.method private final createAddCardPaymentMethodViewHolder(Landroid/view/ViewGroup;)Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddCardPaymentMethodViewHolder;
    .registers 5

    .line 173
    new-instance v0, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddCardPaymentMethodViewHolder;

    .line 174
    sget-object v1, Lcom/stripe/android/view/AddPaymentMethodRowView;->Companion:Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_18

    check-cast p1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->intentArgs:Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    invoke-virtual {v1, p1, v2}, Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;->createCard$stripe_release(Landroid/app/Activity;Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;)Lcom/stripe/android/view/AddPaymentMethodRowView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 173
    invoke-direct {v0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddCardPaymentMethodViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 174
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createAddFpxPaymentMethodViewHolder(Landroid/view/ViewGroup;)Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddFpxPaymentMethodViewHolder;
    .registers 5

    .line 181
    new-instance v0, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddFpxPaymentMethodViewHolder;

    .line 182
    sget-object v1, Lcom/stripe/android/view/AddPaymentMethodRowView;->Companion:Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_18

    check-cast p1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->intentArgs:Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    invoke-virtual {v1, p1, v2}, Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;->createFpx$stripe_release(Landroid/app/Activity;Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;)Lcom/stripe/android/view/AddPaymentMethodRowView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 181
    invoke-direct {v0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddFpxPaymentMethodViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 182
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createGooglePayViewHolder(Landroid/view/ViewGroup;)Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$GooglePayViewHolder;
    .registers 5

    .line 208
    new-instance v0, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$GooglePayViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$GooglePayViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private final createPaymentMethodViewHolder(Landroid/view/ViewGroup;)Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;
    .registers 5

    .line 189
    new-instance v0, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;

    invoke-direct {v0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 191
    iget-boolean v1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->canDeletePaymentMethods:Z

    if-eqz v1, :cond_21

    .line 193
    iget-object v1, v0, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;->itemView:Landroid/view/View;

    .line 194
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/stripe/android/R$string;->delete_payment_method:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 195
    new-instance v2, Lcom/stripe/android/view/PaymentMethodsAdapter$createPaymentMethodViewHolder$1;

    invoke-direct {v2, p0, v0}, Lcom/stripe/android/view/PaymentMethodsAdapter$createPaymentMethodViewHolder$1;-><init>(Lcom/stripe/android/view/PaymentMethodsAdapter;Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;)V

    check-cast v2, Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 192
    invoke-static {v1, p1, v2}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I

    :cond_21
    return-object v0
.end method

.method private final getAddableTypesPosition(I)I
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->googlePayCount:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private final getPaymentMethodIndex(I)I
    .registers 3

    .line 238
    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->googlePayCount:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private final isGooglePayPosition(I)Z
    .registers 3

    .line 91
    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->shouldShowGooglePay:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private final isPaymentMethodsPosition(I)Z
    .registers 5

    .line 95
    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->shouldShowGooglePay:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 96
    new-instance v1, Lkotlin/ranges/IntRange;

    iget-object v2, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_1c

    :cond_11
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    .line 100
    :goto_1c
    invoke-virtual {v1, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result p1

    return p1
.end method

.method private final updateSelectedPaymentMethod(I)V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    .line 342
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 343
    check-cast v2, Lcom/stripe/android/model/PaymentMethod;

    .line 145
    iget-object v2, v2, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->selectedPaymentMethodId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    const/4 v1, -0x1

    :goto_22
    if-eq v1, p1, :cond_37

    .line 149
    invoke-virtual {p0, v1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->notifyItemChanged(I)V

    .line 150
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod;

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    iput-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->selectedPaymentMethodId:Ljava/lang/String;

    .line 155
    :cond_37
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public final synthetic deletePaymentMethod$stripe_release(Lcom/stripe/android/model/PaymentMethod;)V
    .registers 4

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->getPosition$stripe_release(Lcom/stripe/android/model/PaymentMethod;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_19

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/PaymentMethodsAdapter;->notifyItemRemoved(I)V

    :cond_19
    return-void
.end method

.method public getItemCount()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->addableTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->googlePayCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 105
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->isGooglePayPosition(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    sget-wide v0, Lcom/stripe/android/view/PaymentMethodsAdapter;->GOOGLE_PAY_ITEM_ID:J

    goto :goto_2b

    .line 107
    :cond_9
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->isPaymentMethodsPosition(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 108
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->getPaymentMethodAtPosition$stripe_release(I)Lcom/stripe/android/model/PaymentMethod;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentMethod;->hashCode()I

    move-result p1

    goto :goto_2a

    .line 110
    :cond_18
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->addableTypes:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->getAddableTypesPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/PaymentMethod$Type;

    iget-object p1, p1, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    :goto_2a
    int-to-long v0, p1

    :goto_2b
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5

    .line 66
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->isGooglePayPosition(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p1, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->GooglePay:Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;

    invoke-virtual {p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->ordinal()I

    move-result p1

    goto :goto_28

    .line 67
    :cond_d
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->isPaymentMethodsPosition(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 68
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->getPaymentMethodAtPosition$stripe_release(I)Lcom/stripe/android/model/PaymentMethod;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod;->type:Lcom/stripe/android/model/PaymentMethod$Type;

    .line 69
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    if-ne v1, v0, :cond_24

    .line 70
    sget-object p1, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->Card:Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;

    invoke-virtual {p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->ordinal()I

    move-result p1

    goto :goto_28

    .line 72
    :cond_24
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    :goto_28
    return p1

    .line 77
    :cond_29
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->addableTypes:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->getAddableTypesPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 76
    check-cast p1, Lcom/stripe/android/model/PaymentMethod$Type;

    .line 78
    sget-object v0, Lcom/stripe/android/view/PaymentMethodsAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentMethod$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_65

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    .line 80
    sget-object p1, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->AddFpx:Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;

    invoke-virtual {p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->ordinal()I

    move-result p1

    goto :goto_6b

    .line 82
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PaymentMethod type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 79
    :cond_65
    sget-object p1, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->AddCard:Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;

    invoke-virtual {p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->ordinal()I

    move-result p1

    :goto_6b
    return p1
.end method

.method public final getListener$stripe_release()Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->listener:Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;

    return-object v0
.end method

.method public final synthetic getPaymentMethodAtPosition$stripe_release(I)Lcom/stripe/android/model/PaymentMethod;
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->getPaymentMethodIndex(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/PaymentMethod;

    return-object p1
.end method

.method public final getPaymentMethods$stripe_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public final getPosition$stripe_release(Lcom/stripe/android/model/PaymentMethod;)Ljava/lang/Integer;
    .registers 4
    .param p1    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    move-object p1, v1

    :goto_20
    if-eqz p1, :cond_2f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 247
    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->googlePayCount:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2f
    return-object v1
.end method

.method public final getSelectedPaymentMethod$stripe_release()Lcom/stripe/android/model/PaymentMethod;
    .registers 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->selectedPaymentMethodId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 42
    iget-object v2, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 339
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/stripe/android/model/PaymentMethod;

    .line 42
    iget-object v4, v4, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v1, v3

    .line 340
    :cond_23
    check-cast v1, Lcom/stripe/android/model/PaymentMethod;

    :cond_25
    return-object v1
.end method

.method public final getSelectedPaymentMethodId$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->selectedPaymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    instance-of v0, p1, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;

    if-eqz v0, :cond_2b

    .line 116
    invoke-virtual {p0, p2}, Lcom/stripe/android/view/PaymentMethodsAdapter;->getPaymentMethodAtPosition$stripe_release(I)Lcom/stripe/android/model/PaymentMethod;

    move-result-object p2

    .line 117
    move-object v0, p1

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;

    invoke-virtual {v0, p2}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;->setPaymentMethod(Lcom/stripe/android/model/PaymentMethod;)V

    .line 118
    iget-object p2, p2, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->selectedPaymentMethodId:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;->setSelected(Z)V

    .line 119
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/stripe/android/view/PaymentMethodsAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter$onBindViewHolder$1;-><init>(Lcom/stripe/android/view/PaymentMethodsAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_42

    .line 122
    :cond_2b
    instance-of p2, p1, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$GooglePayViewHolder;

    if-eqz p2, :cond_42

    .line 123
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/stripe/android/view/PaymentMethodsAdapter$onBindViewHolder$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/PaymentMethodsAdapter$onBindViewHolder$2;-><init>(Lcom/stripe/android/view/PaymentMethodsAdapter;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    check-cast p1, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$GooglePayViewHolder;

    iget-boolean p2, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->useGooglePay:Z

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$GooglePayViewHolder;->bind(Z)V

    :cond_42
    :goto_42
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->values()[Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;

    move-result-object v0

    aget-object p2, v0, p2

    sget-object v0, Lcom/stripe/android/view/PaymentMethodsAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentMethodsAdapter$ViewType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3a

    const/4 v0, 0x2

    if-eq p2, v0, :cond_33

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2c

    const/4 v0, 0x4

    if-ne p2, v0, :cond_26

    .line 166
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->createGooglePayViewHolder(Landroid/view/ViewGroup;)Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$GooglePayViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_40

    :cond_26
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 165
    :cond_2c
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->createAddFpxPaymentMethodViewHolder(Landroid/view/ViewGroup;)Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddFpxPaymentMethodViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_40

    .line 164
    :cond_33
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->createAddCardPaymentMethodViewHolder(Landroid/view/ViewGroup;)Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$AddCardPaymentMethodViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_40

    .line 163
    :cond_3a
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->createPaymentMethodViewHolder(Landroid/view/ViewGroup;)Lcom/stripe/android/view/PaymentMethodsAdapter$ViewHolder$PaymentMethodViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_40
    return-object p1
.end method

.method public final synthetic onPositionClicked$stripe_release(I)V
    .registers 9

    .line 133
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->updateSelectedPaymentMethod(I)V

    .line 134
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/android/view/PaymentMethodsAdapter$onPositionClicked$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/stripe/android/view/PaymentMethodsAdapter$onPositionClicked$1;-><init>(Lcom/stripe/android/view/PaymentMethodsAdapter;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final synthetic resetPaymentMethod$stripe_release(Lcom/stripe/android/model/PaymentMethod;)V
    .registers 3

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->getPosition$stripe_release(Lcom/stripe/android/model/PaymentMethod;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_14

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 222
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PaymentMethodsAdapter;->notifyItemChanged(I)V

    :cond_14
    return-void
.end method

.method public final setListener$stripe_release(Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;)V
    .registers 2
    .param p1    # Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 46
    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->listener:Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;

    return-void
.end method

.method public final synthetic setPaymentMethods$stripe_release(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paymentMethods"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->paymentMethods:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentMethodsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setSelectedPaymentMethodId$stripe_release(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsAdapter;->selectedPaymentMethodId:Ljava/lang/String;

    return-void
.end method
