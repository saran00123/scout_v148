.class public final Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;
.super Lcom/stripe/android/model/AccountParams$BusinessTypeParams;
.source "AccountParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/AccountParams$BusinessTypeParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Individual"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Creator;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Document;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Builder;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u001e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 q2\u00020\u0001:\u0004pqrsB\u00e9\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\u0016\u0008\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0002\u0010\u001aJ\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0017\u0010W\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0015H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u00ed\u0001\u0010c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0016\u0008\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00c6\u0001J\t\u0010d\u001a\u00020eH\u00d6\u0001J\u0013\u0010f\u001a\u00020g2\u0008\u0010h\u001a\u0004\u0018\u00010FH\u00d6\u0003J\t\u0010i\u001a\u00020eH\u00d6\u0001J\t\u0010j\u001a\u00020\nH\u00d6\u0001J\u0019\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020n2\u0006\u0010o\u001a\u00020eH\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010 \"\u0004\u0008$\u0010\"R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010*\"\u0004\u0008.\u0010,R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010*\"\u0004\u00080\u0010,R\u001c\u0010\r\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010*\"\u0004\u00082\u0010,R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010*\"\u0004\u00084\u0010,R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010*\"\u0004\u00086\u0010,R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010*\"\u0004\u00088\u0010,R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010*\"\u0004\u0008:\u0010,R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010*\"\u0004\u0008<\u0010,R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010*\"\u0004\u0008>\u0010,R(\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR(\u0010C\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010F0E0D8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010*\"\u0004\u0008J\u0010,R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010*\"\u0004\u0008L\u0010,R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010P\u00a8\u0006t"
    }
    d2 = {
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;",
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams;",
        "address",
        "Lcom/stripe/android/model/Address;",
        "addressKana",
        "Lcom/stripe/android/model/AddressJapanParams;",
        "addressKanji",
        "dateOfBirth",
        "Lcom/stripe/android/model/DateOfBirth;",
        "email",
        "",
        "firstName",
        "firstNameKana",
        "firstNameKanji",
        "gender",
        "idNumber",
        "lastName",
        "lastNameKana",
        "lastNameKanji",
        "maidenName",
        "metadata",
        "",
        "phone",
        "ssnLast4",
        "verification",
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;",
        "(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;)V",
        "getAddress",
        "()Lcom/stripe/android/model/Address;",
        "setAddress",
        "(Lcom/stripe/android/model/Address;)V",
        "getAddressKana",
        "()Lcom/stripe/android/model/AddressJapanParams;",
        "setAddressKana",
        "(Lcom/stripe/android/model/AddressJapanParams;)V",
        "getAddressKanji",
        "setAddressKanji",
        "getDateOfBirth",
        "()Lcom/stripe/android/model/DateOfBirth;",
        "setDateOfBirth",
        "(Lcom/stripe/android/model/DateOfBirth;)V",
        "getEmail",
        "()Ljava/lang/String;",
        "setEmail",
        "(Ljava/lang/String;)V",
        "getFirstName",
        "setFirstName",
        "getFirstNameKana",
        "setFirstNameKana",
        "getFirstNameKanji",
        "setFirstNameKanji",
        "getGender",
        "setGender",
        "getIdNumber",
        "setIdNumber",
        "getLastName",
        "setLastName",
        "getLastNameKana",
        "setLastNameKana",
        "getLastNameKanji",
        "setLastNameKanji",
        "getMaidenName",
        "setMaidenName",
        "getMetadata",
        "()Ljava/util/Map;",
        "setMetadata",
        "(Ljava/util/Map;)V",
        "paramsList",
        "",
        "Lkotlin/Pair;",
        "",
        "getParamsList",
        "()Ljava/util/List;",
        "getPhone",
        "setPhone",
        "getSsnLast4",
        "setSsnLast4",
        "getVerification",
        "()Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;",
        "setVerification",
        "(Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;)V",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Builder",
        "Companion",
        "Document",
        "Verification",
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
            "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;",
            ">;"
        }
    .end annotation
.end field

.field private static final Companion:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_ADDRESS:Ljava/lang/String; = "address"

.field private static final PARAM_ADDRESS_KANA:Ljava/lang/String; = "address_kana"

.field private static final PARAM_ADDRESS_KANJI:Ljava/lang/String; = "address_kanji"

.field private static final PARAM_DOB:Ljava/lang/String; = "dob"

.field private static final PARAM_EMAIL:Ljava/lang/String; = "email"

.field private static final PARAM_FIRST_NAME:Ljava/lang/String; = "first_name"

.field private static final PARAM_FIRST_NAME_KANA:Ljava/lang/String; = "first_name_kana"

.field private static final PARAM_FIRST_NAME_KANJI:Ljava/lang/String; = "first_name_kanji"

.field private static final PARAM_GENDER:Ljava/lang/String; = "gender"

.field private static final PARAM_ID_NUMBER:Ljava/lang/String; = "id_number"

.field private static final PARAM_LAST_NAME:Ljava/lang/String; = "last_name"

.field private static final PARAM_LAST_NAME_KANA:Ljava/lang/String; = "last_name_kana"

.field private static final PARAM_LAST_NAME_KANJI:Ljava/lang/String; = "last_name_kanji"

.field private static final PARAM_MAIDEN_NAME:Ljava/lang/String; = "maiden_name"

.field private static final PARAM_METADATA:Ljava/lang/String; = "metadata"

.field private static final PARAM_PHONE:Ljava/lang/String; = "phone"

.field private static final PARAM_SSN_LAST_4:Ljava/lang/String; = "ssn_last_4"

.field private static final PARAM_VERIFICATION:Ljava/lang/String; = "verification"


# instance fields
.field private address:Lcom/stripe/android/model/Address;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addressKana:Lcom/stripe/android/model/AddressJapanParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addressKanji:Lcom/stripe/android/model/AddressJapanParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dateOfBirth:Lcom/stripe/android/model/DateOfBirth;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private firstNameKana:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private firstNameKanji:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private idNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastNameKana:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastNameKanji:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maidenName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ssnLast4:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->Companion:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Companion;

    new-instance v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0x3ffff

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;-><init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;)V
    .registers 22
    .param p1    # Lcom/stripe/android/model/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/model/DateOfBirth;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/Address;",
            "Lcom/stripe/android/model/AddressJapanParams;",
            "Lcom/stripe/android/model/AddressJapanParams;",
            "Lcom/stripe/android/model/DateOfBirth;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 590
    sget-object v1, Lcom/stripe/android/model/AccountParams$BusinessType;->Individual:Lcom/stripe/android/model/AccountParams$BusinessType;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams;-><init>(Lcom/stripe/android/model/AccountParams$BusinessType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    move-object v1, p2

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    move-object v1, p3

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    move-object v1, p4

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    move-object v1, p5

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 40

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 464
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Address;

    goto :goto_d

    :cond_b
    move-object/from16 v1, p1

    :goto_d
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_15

    .line 471
    move-object v3, v2

    check-cast v3, Lcom/stripe/android/model/AddressJapanParams;

    goto :goto_17

    :cond_15
    move-object/from16 v3, p2

    :goto_17
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1f

    .line 478
    move-object v4, v2

    check-cast v4, Lcom/stripe/android/model/AddressJapanParams;

    goto :goto_21

    :cond_1f
    move-object/from16 v4, p3

    :goto_21
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_29

    .line 485
    move-object v5, v2

    check-cast v5, Lcom/stripe/android/model/DateOfBirth;

    goto :goto_2b

    :cond_29
    move-object/from16 v5, p4

    :goto_2b
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_33

    .line 492
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto :goto_35

    :cond_33
    move-object/from16 v6, p5

    :goto_35
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_3d

    .line 499
    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_3f

    :cond_3d
    move-object/from16 v7, p6

    :goto_3f
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_47

    .line 506
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    goto :goto_49

    :cond_47
    move-object/from16 v8, p7

    :goto_49
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_51

    .line 513
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto :goto_53

    :cond_51
    move-object/from16 v9, p8

    :goto_53
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_5b

    .line 520
    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    goto :goto_5d

    :cond_5b
    move-object/from16 v10, p9

    :goto_5d
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_65

    .line 530
    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    goto :goto_67

    :cond_65
    move-object/from16 v11, p10

    :goto_67
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_6f

    .line 537
    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    goto :goto_71

    :cond_6f
    move-object/from16 v12, p11

    :goto_71
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_79

    .line 544
    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    goto :goto_7b

    :cond_79
    move-object/from16 v13, p12

    :goto_7b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_83

    .line 551
    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    goto :goto_85

    :cond_83
    move-object/from16 v14, p13

    :goto_85
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_8d

    .line 558
    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto :goto_8f

    :cond_8d
    move-object/from16 v15, p14

    :goto_8f
    move-object/from16 p20, v15

    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_99

    .line 568
    move-object v15, v2

    check-cast v15, Ljava/util/Map;

    goto :goto_9b

    :cond_99
    move-object/from16 v15, p15

    :goto_9b
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_a7

    .line 575
    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    goto :goto_a9

    :cond_a7
    move-object/from16 v16, p16

    :goto_a9
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_b4

    .line 582
    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    goto :goto_b6

    :cond_b4
    move-object/from16 v17, p17

    :goto_b6
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_c0

    .line 589
    move-object v0, v2

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    goto :goto_c2

    :cond_c0
    move-object/from16 v0, p18

    :goto_c2
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, p20

    move-object/from16 p16, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v0

    invoke-direct/range {p1 .. p19}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;-><init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;ILjava/lang/Object;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;
    .registers 38

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-object v14, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    goto :goto_79

    :cond_77
    move-object/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_99

    move-object/from16 p15, v15

    iget-object v15, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    goto :goto_9d

    :cond_99
    move-object/from16 p15, v15

    move-object/from16 v15, p16

    :goto_9d
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_a8

    move-object/from16 p16, v15

    iget-object v15, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    goto :goto_ac

    :cond_a8
    move-object/from16 p16, v15

    move-object/from16 v15, p17

    :goto_ac
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_b5

    iget-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    goto :goto_b7

    :cond_b5
    move-object/from16 v1, p18

    :goto_b7
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->copy(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/stripe/android/model/Address;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    return-object v0
.end method

.method public final component2()Lcom/stripe/android/model/AddressJapanParams;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final component3()Lcom/stripe/android/model/AddressJapanParams;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final component4()Lcom/stripe/android/model/DateOfBirth;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;
    .registers 39
    .param p1    # Lcom/stripe/android/model/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/model/DateOfBirth;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/Address;",
            "Lcom/stripe/android/model/AddressJapanParams;",
            "Lcom/stripe/android/model/AddressJapanParams;",
            "Lcom/stripe/android/model/DateOfBirth;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;",
            ")",
            "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    new-instance v19, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;-><init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/DateOfBirth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;)V

    return-object v19
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

    if-eq p0, p1, :cond_bf

    instance-of v0, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;

    if-eqz v0, :cond_bd

    check-cast p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    iget-object p1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bd

    goto :goto_bf

    :cond_bd
    const/4 p1, 0x0

    return p1

    :cond_bf
    :goto_bf
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddress()Lcom/stripe/android/model/Address;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    return-object v0
.end method

.method public final getAddressKana()Lcom/stripe/android/model/AddressJapanParams;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final getAddressKanji()Lcom/stripe/android/model/AddressJapanParams;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final getDateOfBirth()Lcom/stripe/android/model/DateOfBirth;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstNameKana()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstNameKanji()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdNumber()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastNameKana()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastNameKanji()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaidenName()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getParamsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x12

    .line 592
    new-array v0, v0, [Lkotlin/Pair;

    .line 593
    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/stripe/android/model/Address;->toParamMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    const-string v3, "address"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 594
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/stripe/android/model/AddressJapanParams;->toParamMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_23

    :cond_22
    move-object v3, v2

    :goto_23
    const-string v4, "address_kana"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 595
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Lcom/stripe/android/model/AddressJapanParams;->toParamMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_36

    :cond_35
    move-object v3, v2

    :goto_36
    const-string v4, "address_kanji"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 596
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Lcom/stripe/android/model/DateOfBirth;->toParamMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_49

    :cond_48
    move-object v3, v2

    :goto_49
    const-string v4, "dob"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 597
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    const-string v4, "email"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 598
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    const-string v4, "first_name"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 599
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    const-string v4, "first_name_kana"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 600
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    const-string v4, "first_name_kanji"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 601
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    const-string v4, "gender"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x9

    .line 602
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    const-string v4, "id_number"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 603
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    const-string v4, "last_name"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xb

    .line 604
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    const-string v4, "last_name_kana"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xc

    .line 605
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    const-string v4, "last_name_kanji"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xd

    .line 606
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    const-string v4, "maiden_name"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xe

    .line 607
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    const-string v4, "metadata"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xf

    .line 608
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    const-string v4, "phone"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x10

    .line 609
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    const-string v4, "ssn_last_4"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x11

    .line 610
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    if-eqz v3, :cond_f3

    invoke-virtual {v3}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;->toParamMap()Ljava/util/Map;

    move-result-object v2

    :cond_f3
    const-string v3, "verification"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 592
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getSsnLast4()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerification()Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_58

    :cond_57
    move v2, v1

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_65

    :cond_64
    move v2, v1

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_72

    :cond_71
    move v2, v1

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7f

    :cond_7e
    move v2, v1

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8c

    :cond_8b
    move v2, v1

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_99

    :cond_98
    move v2, v1

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a6

    :cond_a5
    move v2, v1

    :goto_a6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b3

    :cond_b2
    move v2, v1

    :goto_b3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c0

    :cond_bf
    move v2, v1

    :goto_c0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_cd

    :cond_cc
    move v2, v1

    :goto_cd
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    if-eqz v2, :cond_d9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_da

    :cond_d9
    move v2, v1

    :goto_da
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    if-eqz v2, :cond_e5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_e5
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAddress(Lcom/stripe/android/model/Address;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 464
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    return-void
.end method

.method public final setAddressKana(Lcom/stripe/android/model/AddressJapanParams;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 471
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    return-void
.end method

.method public final setAddressKanji(Lcom/stripe/android/model/AddressJapanParams;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 478
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    return-void
.end method

.method public final setDateOfBirth(Lcom/stripe/android/model/DateOfBirth;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/DateOfBirth;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 485
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 492
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    return-void
.end method

.method public final setFirstName(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 499
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    return-void
.end method

.method public final setFirstNameKana(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 506
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    return-void
.end method

.method public final setFirstNameKanji(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 513
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    return-void
.end method

.method public final setGender(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 520
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    return-void
.end method

.method public final setIdNumber(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 530
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    return-void
.end method

.method public final setLastName(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 537
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    return-void
.end method

.method public final setLastNameKana(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 544
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    return-void
.end method

.method public final setLastNameKanji(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 551
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    return-void
.end method

.method public final setMaidenName(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 558
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    return-void
.end method

.method public final setMetadata(Ljava/util/Map;)V
    .registers 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 568
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 575
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setSsnLast4(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 582
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    return-void
.end method

.method public final setVerification(Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 589
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Individual(address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addressKana="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addressKanji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateOfBirth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstNameKana="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstNameKanji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", idNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastNameKana="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastNameKanji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maidenName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ssnLast4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->address:Lcom/stripe/android/model/Address;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz p2, :cond_20

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz p2, :cond_2e

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    :cond_2e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_31
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->dateOfBirth:Lcom/stripe/android/model/DateOfBirth;

    if-eqz p2, :cond_3c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3f

    :cond_3c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3f
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKana:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->firstNameKanji:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->gender:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->idNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKana:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->lastNameKanji:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->maidenName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->metadata:Ljava/util/Map;

    if-eqz p2, :cond_a4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_87
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_87

    :cond_a4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_a7
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->ssnLast4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Individual$Verification;

    if-eqz p2, :cond_bc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_bf

    :cond_bc
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_bf
    return-void
.end method
