.class public final Lcom/stripe/android/model/AccountParams;
.super Lcom/stripe/android/model/TokenParams;
.source "AccountParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/AccountParams$Creator;,
        Lcom/stripe/android/model/AccountParams$BusinessType;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams;,
        Lcom/stripe/android/model/AccountParams$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0003\u001b\u001c\u001dB\u001b\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c2\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c2\u0003J\u001f\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\nH\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\tH\u00d6\u0001J\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0011H\u00d6\u0001R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/android/model/AccountParams;",
        "Lcom/stripe/android/model/TokenParams;",
        "tosShownAndAccepted",
        "",
        "businessTypeParams",
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams;",
        "(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams;)V",
        "typeDataParams",
        "",
        "",
        "",
        "getTypeDataParams",
        "()Ljava/util/Map;",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "BusinessType",
        "BusinessTypeParams",
        "Companion",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/stripe/android/model/AccountParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/model/AccountParams$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_BUSINESS_TYPE:Ljava/lang/String; = "business_type"

.field private static final PARAM_TOS_SHOWN_AND_ACCEPTED:Ljava/lang/String; = "tos_shown_and_accepted"


# instance fields
.field private final businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

.field private final tosShownAndAccepted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/model/AccountParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/AccountParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/AccountParams;->Companion:Lcom/stripe/android/model/AccountParams$Companion;

    new-instance v0, Lcom/stripe/android/model/AccountParams$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/AccountParams$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/AccountParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams;)V
    .registers 6
    .param p2    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 26
    sget-object v0, Lcom/stripe/android/model/Token$Type;->Account:Lcom/stripe/android/model/Token$Type;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/stripe/android/model/TokenParams;-><init>(Lcom/stripe/android/model/Token$Type;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    iput-object p2, p0, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 25
    check-cast p2, Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/model/AccountParams;-><init>(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams;)V

    return-void
.end method

.method private final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    return v0
.end method

.method private final component2()Lcom/stripe/android/model/AccountParams$BusinessTypeParams;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/AccountParams;ZLcom/stripe/android/model/AccountParams$BusinessTypeParams;ILjava/lang/Object;)Lcom/stripe/android/model/AccountParams;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-boolean p1, p0, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/model/AccountParams;->copy(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams;)Lcom/stripe/android/model/AccountParams;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Z)Lcom/stripe/android/model/AccountParams;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/AccountParams;->Companion:Lcom/stripe/android/model/AccountParams$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/android/model/AccountParams$Companion;->create(Z)Lcom/stripe/android/model/AccountParams;

    move-result-object p0

    return-object p0
.end method

.method public static final create(ZLcom/stripe/android/model/AccountParams$BusinessType;)Lcom/stripe/android/model/AccountParams;
    .registers 3
    .param p1    # Lcom/stripe/android/model/AccountParams$BusinessType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/AccountParams;->Companion:Lcom/stripe/android/model/AccountParams$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/android/model/AccountParams$Companion;->create(ZLcom/stripe/android/model/AccountParams$BusinessType;)Lcom/stripe/android/model/AccountParams;

    move-result-object p0

    return-object p0
.end method

.method public static final create(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;)Lcom/stripe/android/model/AccountParams;
    .registers 3
    .param p1    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/AccountParams;->Companion:Lcom/stripe/android/model/AccountParams$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/android/model/AccountParams$Companion;->create(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;)Lcom/stripe/android/model/AccountParams;

    move-result-object p0

    return-object p0
.end method

.method public static final create(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;)Lcom/stripe/android/model/AccountParams;
    .registers 3
    .param p1    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/AccountParams;->Companion:Lcom/stripe/android/model/AccountParams$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/android/model/AccountParams$Companion;->create(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;)Lcom/stripe/android/model/AccountParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams;)Lcom/stripe/android/model/AccountParams;
    .registers 4
    .param p2    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/stripe/android/model/AccountParams;

    invoke-direct {v0, p1, p2}, Lcom/stripe/android/model/AccountParams;-><init>(ZLcom/stripe/android/model/AccountParams$BusinessTypeParams;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1b

    instance-of v0, p1, Lcom/stripe/android/model/AccountParams;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/stripe/android/model/AccountParams;

    iget-boolean v0, p0, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    iget-boolean v1, p1, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    iget-object p1, p1, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public getTypeDataParams()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "tos_shown_and_accepted"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    if-eqz v1, :cond_40

    const/4 v2, 0x2

    .line 31
    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams;->getType$stripe_release()Lcom/stripe/android/model/AccountParams$BusinessType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/android/model/AccountParams$BusinessType;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "business_type"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 33
    invoke-virtual {v1}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams;->getType$stripe_release()Lcom/stripe/android/model/AccountParams$BusinessType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/android/model/AccountParams$BusinessType;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams;->toParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v3

    .line 31
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    if-eqz v1, :cond_44

    goto :goto_48

    .line 35
    :cond_44
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 29
    :goto_48
    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountParams(tosShownAndAccepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", businessTypeParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/stripe/android/model/AccountParams;->tosShownAndAccepted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams;->businessTypeParams:Lcom/stripe/android/model/AccountParams$BusinessTypeParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
