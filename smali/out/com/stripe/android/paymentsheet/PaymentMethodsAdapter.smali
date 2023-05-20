.class public final Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaymentMethodsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;,
        Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$AddCardViewHolder;,
        Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;,
        Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$Companion;
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
    value = "SMAP\nPaymentMethodsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodsAdapter.kt\ncom/stripe/android/paymentsheet/PaymentMethodsAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,136:1\n318#2,7:137\n33#3,3:144\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentMethodsAdapter.kt\ncom/stripe/android/paymentsheet/PaymentMethodsAdapter\n*L\n33#1,7:137\n20#1,3:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004&\'()B+\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0018\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001aH\u0016J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001aH\u0002R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR7\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "selectedPaymentMethod",
        "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
        "paymentMethodSelectedListener",
        "Lkotlin/Function1;",
        "",
        "addCardClickListener",
        "Landroid/view/View$OnClickListener;",
        "(Lcom/stripe/android/paymentsheet/model/PaymentSelection;Lkotlin/jvm/functions/Function1;Landroid/view/View$OnClickListener;)V",
        "getAddCardClickListener",
        "()Landroid/view/View$OnClickListener;",
        "getPaymentMethodSelectedListener",
        "()Lkotlin/jvm/functions/Function1;",
        "<set-?>",
        "",
        "Lcom/stripe/android/model/PaymentMethod;",
        "paymentMethods",
        "getPaymentMethods",
        "()Ljava/util/List;",
        "setPaymentMethods",
        "(Ljava/util/List;)V",
        "paymentMethods$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "getItemCount",
        "",
        "getItemId",
        "",
        "position",
        "getItemViewType",
        "onBindViewHolder",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "updateSelectedPaymentMethod",
        "AddCardViewHolder",
        "CardViewHolder",
        "Companion",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final ADD_CARD_ID:J = 0x4d2L

.field private static final Companion:Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final addCardClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentMethodSelectedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentMethods$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedPaymentMethod:Lcom/stripe/android/model/PaymentMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;

    const/4 v3, 0x0

    const-string v4, "paymentMethods"

    const-string v5, "getPaymentMethods()Ljava/util/List;"

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    aput-object v1, v0, v3

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->Companion:Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/paymentsheet/model/PaymentSelection;Lkotlin/jvm/functions/Function1;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1    # Lcom/stripe/android/paymentsheet/model/PaymentSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    const-string v0, "paymentMethodSelectedListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addCardClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->paymentMethodSelectedListener:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->addCardClickListener:Landroid/view/View$OnClickListener;

    .line 20
    sget-object p2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 144
    new-instance p3, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$$special$$inlined$observable$1;

    invoke-direct {p3, p2, p2, p0}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;)V

    check-cast p3, Lkotlin/properties/ReadWriteProperty;

    .line 146
    iput-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->paymentMethods$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 26
    instance-of p2, p1, Lcom/stripe/android/paymentsheet/model/PaymentSelection$Saved;

    const/4 p3, 0x0

    if-nez p2, :cond_26

    move-object p1, p3

    :cond_26
    check-cast p1, Lcom/stripe/android/paymentsheet/model/PaymentSelection$Saved;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/model/PaymentSelection$Saved;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object p3

    :cond_2e
    iput-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->selectedPaymentMethod:Lcom/stripe/android/model/PaymentMethod;

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method public static final synthetic access$updateSelectedPaymentMethod(Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;I)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->updateSelectedPaymentMethod(I)V

    return-void
.end method

.method private final updateSelectedPaymentMethod(I)V
    .registers 6

    .line 33
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->getPaymentMethods()Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 139
    check-cast v2, Lcom/stripe/android/model/PaymentMethod;

    .line 34
    iget-object v2, v2, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->selectedPaymentMethod:Lcom/stripe/android/model/PaymentMethod;

    if-eqz v3, :cond_1e

    iget-object v3, v3, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_2a

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_29
    const/4 v1, -0x1

    :goto_2a
    if-eq v1, p1, :cond_4c

    .line 38
    invoke-virtual {p0, v1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->notifyItemChanged(I)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->notifyItemChanged(I)V

    .line 40
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->getPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/PaymentMethod;

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->selectedPaymentMethod:Lcom/stripe/android/model/PaymentMethod;

    .line 41
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->selectedPaymentMethod:Lcom/stripe/android/model/PaymentMethod;

    if-eqz p1, :cond_4c

    .line 42
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->paymentMethodSelectedListener:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/stripe/android/paymentsheet/model/PaymentSelection$Saved;

    invoke-direct {v1, p1}, Lcom/stripe/android/paymentsheet/model/PaymentSelection$Saved;-><init>(Lcom/stripe/android/model/PaymentMethod;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    return-void
.end method


# virtual methods
.method public final getAddCardClickListener()Landroid/view/View$OnClickListener;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->addCardClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->getPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 49
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->getPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_d

    const-wide/16 v0, 0x4d2

    goto :goto_1c

    .line 50
    :cond_d
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->getPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/PaymentMethod;

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentMethod;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_1c
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->getPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_d

    sget-object p1, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;->AddCard:Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;

    goto :goto_f

    .line 73
    :cond_d
    sget-object p1, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;->Card:Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;

    .line 75
    :goto_f
    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;->ordinal()I

    move-result p1

    return p1
.end method

.method public final getPaymentMethodSelectedListener()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->paymentMethodSelectedListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPaymentMethods()Ljava/util/List;
    .registers 4
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

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->paymentMethods$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

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

    .line 79
    instance-of v0, p1, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;

    if-eqz v0, :cond_36

    .line 80
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->getPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/android/model/PaymentMethod;

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;

    invoke-virtual {v0, p2}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;->setPaymentMethod(Lcom/stripe/android/model/PaymentMethod;)V

    .line 82
    iget-object p2, p2, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->selectedPaymentMethod:Lcom/stripe/android/model/PaymentMethod;

    if-eqz v1, :cond_22

    iget-object v1, v1, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;->setSelected(Z)V

    .line 83
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$onBindViewHolder$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_36
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

    .line 56
    invoke-static {}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;->values()[Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;

    move-result-object v0

    aget-object p2, v0, p2

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$ViewType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_32

    const/4 v0, 0x2

    if-ne p2, v0, :cond_28

    .line 58
    new-instance p2, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$AddCardViewHolder;

    invoke-direct {p2, p1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$AddCardViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 59
    iget-object p1, p2, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$AddCardViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->addCardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_39

    .line 61
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unsupported view type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 57
    :cond_32
    new-instance p2, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;

    invoke-direct {p2, p1}, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter$CardViewHolder;-><init>(Landroid/view/ViewGroup;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_39
    return-object p2
.end method

.method public final setPaymentMethods(Ljava/util/List;)V
    .registers 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->paymentMethods$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
