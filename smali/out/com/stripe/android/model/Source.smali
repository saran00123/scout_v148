.class public final Lcom/stripe/android/model/Source;
.super Ljava/lang/Object;
.source "Source.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeModel;
.implements Lcom/stripe/android/model/StripePaymentSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/Source$Creator;,
        Lcom/stripe/android/model/Source$SourceType;,
        Lcom/stripe/android/model/Source$Status;,
        Lcom/stripe/android/model/Source$Usage;,
        Lcom/stripe/android/model/Source$Flow;,
        Lcom/stripe/android/model/Source$Redirect;,
        Lcom/stripe/android/model/Source$CodeVerification;,
        Lcom/stripe/android/model/Source$Receiver;,
        Lcom/stripe/android/model/Source$Owner;,
        Lcom/stripe/android/model/Source$Klarna;,
        Lcom/stripe/android/model/Source$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008E\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0087\u0008\u0018\u0000 y2\u00020\u00012\u00020\u0002:\u000cxyz{|}~\u007f\u0080\u0001\u0081\u0001B\u00a4\u0002\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u001d\u0008\u0002\u0010\u001a\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u000b\u0012\t\u0018\u00010\u001b\u00a2\u0006\u0002\u0008\u001c\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\u0006\u0010\u001f\u001a\u00020\u0004\u0012\u0006\u0010 \u001a\u00020\u0004\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010*J\u000b\u0010U\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u001e\u0010Z\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u000b\u0012\t\u0018\u00010\u001b\u00a2\u0006\u0002\u0008\u001c\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u001eH\u00c6\u0003J\t\u0010\\\u001a\u00020\u0004H\u00c6\u0003J\t\u0010]\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\"H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010$H\u00c2\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010,J\u000b\u0010a\u001a\u0004\u0018\u00010&H\u00c2\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010(H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0010\u0010f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010,J\u000b\u0010g\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u0010\u0010i\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u00107J\u0017\u0010j\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011H\u00c6\u0003J\u00b1\u0002\u0010k\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u001d\u0008\u0002\u0010\u001a\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u000b\u0012\t\u0018\u00010\u001b\u00a2\u0006\u0002\u0008\u001c\u0018\u00010\u00112\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00042\u0008\u0008\u0002\u0010 \u001a\u00020\u00042\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0004H\u00c6\u0001\u00a2\u0006\u0002\u0010lJ\t\u0010m\u001a\u00020nH\u00d6\u0001J\u0013\u0010o\u001a\u00020\u000f2\u0008\u0010p\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010q\u001a\u00020nH\u00d6\u0001J\t\u0010r\u001a\u00020\u0004H\u00d6\u0001J\u0019\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020nH\u00d6\u0001R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010-\u001a\u0004\u0008+\u0010,R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010-\u001a\u0004\u00082\u0010,R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010/R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010/R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u00108\u001a\u0004\u0008\u000e\u00107R\u0011\u00109\u001a\u00020&8F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R*\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010AR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010ER\u0013\u0010\'\u001a\u0004\u0018\u00010(\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR&\u0010\u001a\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u000b\u0012\t\u0018\u00010\u001b\u00a2\u0006\u0002\u0008\u001c\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010?R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010JR\u0013\u0010)\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010/R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010MR\u0011\u0010\u001f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010/R\u0011\u0010 \u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010/R\u0013\u0010!\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010QR\u0011\u0010R\u001a\u00020$8F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010T\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lcom/stripe/android/model/Source;",
        "Lcom/stripe/android/model/StripeModel;",
        "Lcom/stripe/android/model/StripePaymentSource;",
        "id",
        "",
        "amount",
        "",
        "clientSecret",
        "codeVerification",
        "Lcom/stripe/android/model/Source$CodeVerification;",
        "created",
        "currency",
        "flow",
        "Lcom/stripe/android/model/Source$Flow;",
        "isLiveMode",
        "",
        "metaData",
        "",
        "owner",
        "Lcom/stripe/android/model/Source$Owner;",
        "receiver",
        "Lcom/stripe/android/model/Source$Receiver;",
        "redirect",
        "Lcom/stripe/android/model/Source$Redirect;",
        "status",
        "Lcom/stripe/android/model/Source$Status;",
        "sourceTypeData",
        "",
        "Lkotlinx/parcelize/RawValue;",
        "sourceTypeModel",
        "Lcom/stripe/android/model/SourceTypeModel;",
        "type",
        "typeRaw",
        "usage",
        "Lcom/stripe/android/model/Source$Usage;",
        "_weChat",
        "Lcom/stripe/android/model/WeChat;",
        "_klarna",
        "Lcom/stripe/android/model/Source$Klarna;",
        "sourceOrder",
        "Lcom/stripe/android/model/SourceOrder;",
        "statementDescriptor",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;)V",
        "getAmount",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getClientSecret",
        "()Ljava/lang/String;",
        "getCodeVerification",
        "()Lcom/stripe/android/model/Source$CodeVerification;",
        "getCreated",
        "getCurrency",
        "getFlow",
        "()Lcom/stripe/android/model/Source$Flow;",
        "getId",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "klarna",
        "getKlarna",
        "()Lcom/stripe/android/model/Source$Klarna;",
        "getMetaData$annotations",
        "()V",
        "getMetaData",
        "()Ljava/util/Map;",
        "getOwner",
        "()Lcom/stripe/android/model/Source$Owner;",
        "getReceiver",
        "()Lcom/stripe/android/model/Source$Receiver;",
        "getRedirect",
        "()Lcom/stripe/android/model/Source$Redirect;",
        "getSourceOrder",
        "()Lcom/stripe/android/model/SourceOrder;",
        "getSourceTypeData",
        "getSourceTypeModel",
        "()Lcom/stripe/android/model/SourceTypeModel;",
        "getStatementDescriptor",
        "getStatus",
        "()Lcom/stripe/android/model/Source$Status;",
        "getType",
        "getTypeRaw",
        "getUsage",
        "()Lcom/stripe/android/model/Source$Usage;",
        "weChat",
        "getWeChat",
        "()Lcom/stripe/android/model/WeChat;",
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
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;)Lcom/stripe/android/model/Source;",
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
        "CodeVerification",
        "Companion",
        "Flow",
        "Klarna",
        "Owner",
        "Receiver",
        "Redirect",
        "SourceType",
        "Status",
        "Usage",
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
            "Lcom/stripe/android/model/Source;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/model/Source$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EURO:Ljava/lang/String; = "eur"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USD:Ljava/lang/String; = "usd"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _klarna:Lcom/stripe/android/model/Source$Klarna;

.field private final _weChat:Lcom/stripe/android/model/WeChat;

.field private final amount:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final clientSecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final codeVerification:Lcom/stripe/android/model/Source$CodeVerification;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final created:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final currency:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final flow:Lcom/stripe/android/model/Source$Flow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isLiveMode:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final metaData:Ljava/util/Map;
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

.field private final owner:Lcom/stripe/android/model/Source$Owner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final receiver:Lcom/stripe/android/model/Source$Receiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final redirect:Lcom/stripe/android/model/Source$Redirect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sourceOrder:Lcom/stripe/android/model/SourceOrder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sourceTypeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final statementDescriptor:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final status:Lcom/stripe/android/model/Source$Status;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeRaw:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final usage:Lcom/stripe/android/model/Source$Usage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/model/Source$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/Source$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/Source;->Companion:Lcom/stripe/android/model/Source$Companion;

    new-instance v0, Lcom/stripe/android/model/Source$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/Source$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/Source;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;)V
    .registers 27
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/model/Source$CodeVerification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/model/Source$Flow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/stripe/android/model/Source$Owner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/stripe/android/model/Source$Receiver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/stripe/android/model/Source$Redirect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/stripe/android/model/Source$Status;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/stripe/android/model/SourceTypeModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Lcom/stripe/android/model/Source$Usage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/stripe/android/model/WeChat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/stripe/android/model/Source$Klarna;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Lcom/stripe/android/model/SourceOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/Source$CodeVerification;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/Source$Flow;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/model/Source$Owner;",
            "Lcom/stripe/android/model/Source$Receiver;",
            "Lcom/stripe/android/model/Source$Redirect;",
            "Lcom/stripe/android/model/Source$Status;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/android/model/SourceTypeModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/Source$Usage;",
            "Lcom/stripe/android/model/WeChat;",
            "Lcom/stripe/android/model/Source$Klarna;",
            "Lcom/stripe/android/model/SourceOrder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p16

    move-object/from16 v2, p17

    const-string v3, "type"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typeRaw"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/stripe/android/model/Source;->id:Ljava/lang/String;

    move-object v3, p2

    iput-object v3, v0, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    move-object v3, p3

    iput-object v3, v0, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    move-object v3, p4

    iput-object v3, v0, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    move-object v3, p5

    iput-object v3, v0, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    move-object v3, p6

    iput-object v3, v0, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    move-object v3, p7

    iput-object v3, v0, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    move-object v3, p8

    iput-object v3, v0, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    move-object v3, p9

    iput-object v3, v0, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    move-object v3, p10

    iput-object v3, v0, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    move-object v3, p11

    iput-object v3, v0, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    iput-object v1, v0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    iput-object v2, v0, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 51

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 29
    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    move-object v5, v1

    goto :goto_e

    :cond_c
    move-object/from16 v5, p2

    :goto_e
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_17

    .line 34
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    goto :goto_19

    :cond_17
    move-object/from16 v6, p3

    :goto_19
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_22

    .line 40
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Source$CodeVerification;

    move-object v7, v1

    goto :goto_24

    :cond_22
    move-object/from16 v7, p4

    :goto_24
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2d

    .line 45
    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    move-object v8, v1

    goto :goto_2f

    :cond_2d
    move-object/from16 v8, p5

    :goto_2f
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_38

    .line 52
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_3a

    :cond_38
    move-object/from16 v9, p6

    :goto_3a
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_43

    .line 58
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Source$Flow;

    move-object v10, v1

    goto :goto_45

    :cond_43
    move-object/from16 v10, p7

    :goto_45
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4e

    .line 64
    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    move-object v11, v1

    goto :goto_50

    :cond_4e
    move-object/from16 v11, p8

    :goto_50
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_59

    .line 73
    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    move-object v12, v1

    goto :goto_5b

    :cond_59
    move-object/from16 v12, p9

    :goto_5b
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_64

    .line 79
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Source$Owner;

    move-object v13, v1

    goto :goto_66

    :cond_64
    move-object/from16 v13, p10

    :goto_66
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6f

    .line 85
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Source$Receiver;

    move-object v14, v1

    goto :goto_71

    :cond_6f
    move-object/from16 v14, p11

    :goto_71
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7a

    .line 91
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Source$Redirect;

    move-object v15, v1

    goto :goto_7c

    :cond_7a
    move-object/from16 v15, p12

    :goto_7c
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_86

    .line 97
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Source$Status;

    move-object/from16 v16, v1

    goto :goto_88

    :cond_86
    move-object/from16 v16, p13

    :goto_88
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_92

    .line 99
    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    move-object/from16 v17, v1

    goto :goto_94

    :cond_92
    move-object/from16 v17, p14

    :goto_94
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_9e

    .line 101
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/SourceTypeModel;

    move-object/from16 v18, v1

    goto :goto_a0

    :cond_9e
    move-object/from16 v18, p15

    :goto_a0
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_ab

    .line 125
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Source$Usage;

    move-object/from16 v21, v1

    goto :goto_ad

    :cond_ab
    move-object/from16 v21, p18

    :goto_ad
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b8

    .line 127
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/WeChat;

    move-object/from16 v22, v1

    goto :goto_ba

    :cond_b8
    move-object/from16 v22, p19

    :goto_ba
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c5

    .line 129
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Source$Klarna;

    move-object/from16 v23, v1

    goto :goto_c7

    :cond_c5
    move-object/from16 v23, p20

    :goto_c7
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d2

    .line 135
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/SourceOrder;

    move-object/from16 v24, v1

    goto :goto_d4

    :cond_d2
    move-object/from16 v24, p21

    :goto_d4
    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_df

    .line 141
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v25, v0

    goto :goto_e1

    :cond_df
    move-object/from16 v25, p22

    :goto_e1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    invoke-direct/range {v3 .. v25}, Lcom/stripe/android/model/Source;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;)V

    return-void
.end method

.method public static final asSourceType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/Source;->Companion:Lcom/stripe/android/model/Source$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/android/model/Source$Companion;->asSourceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final component19()Lcom/stripe/android/model/WeChat;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    return-object v0
.end method

.method private final component20()Lcom/stripe/android/model/Source$Klarna;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/Source;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/model/Source;
    .registers 42

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_d
    move-object/from16 v2, p1

    :goto_f
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    goto :goto_18

    :cond_16
    move-object/from16 v3, p2

    :goto_18
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    move-object/from16 v4, p3

    :goto_21
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_28

    iget-object v5, v0, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    goto :goto_2a

    :cond_28
    move-object/from16 v5, p4

    :goto_2a
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_31

    iget-object v6, v0, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    goto :goto_33

    :cond_31
    move-object/from16 v6, p5

    :goto_33
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_3a

    iget-object v7, v0, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    move-object/from16 v7, p6

    :goto_3c
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_43

    iget-object v8, v0, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    goto :goto_45

    :cond_43
    move-object/from16 v8, p7

    :goto_45
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4c

    iget-object v9, v0, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    goto :goto_4e

    :cond_4c
    move-object/from16 v9, p8

    :goto_4e
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_55

    iget-object v10, v0, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    goto :goto_57

    :cond_55
    move-object/from16 v10, p9

    :goto_57
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5e

    iget-object v11, v0, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    goto :goto_60

    :cond_5e
    move-object/from16 v11, p10

    :goto_60
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_67

    iget-object v12, v0, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    goto :goto_69

    :cond_67
    move-object/from16 v12, p11

    :goto_69
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_70

    iget-object v13, v0, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    goto :goto_72

    :cond_70
    move-object/from16 v13, p12

    :goto_72
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_79

    iget-object v14, v0, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    goto :goto_7b

    :cond_79
    move-object/from16 v14, p13

    :goto_7b
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_82

    iget-object v15, v0, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    goto :goto_84

    :cond_82
    move-object/from16 v15, p14

    :goto_84
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8d

    iget-object v15, v0, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    goto :goto_8f

    :cond_8d
    move-object/from16 v15, p15

    :goto_8f
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_9b

    move-object/from16 p15, v15

    iget-object v15, v0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    goto :goto_9f

    :cond_9b
    move-object/from16 p15, v15

    move-object/from16 v15, p16

    :goto_9f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_aa

    move-object/from16 p16, v15

    iget-object v15, v0, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    goto :goto_ae

    :cond_aa
    move-object/from16 p16, v15

    move-object/from16 v15, p17

    :goto_ae
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    if-eqz v16, :cond_b9

    move-object/from16 p17, v15

    iget-object v15, v0, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    goto :goto_bd

    :cond_b9
    move-object/from16 p17, v15

    move-object/from16 v15, p18

    :goto_bd
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    if-eqz v16, :cond_c8

    move-object/from16 p18, v15

    iget-object v15, v0, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    goto :goto_cc

    :cond_c8
    move-object/from16 p18, v15

    move-object/from16 v15, p19

    :goto_cc
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    if-eqz v16, :cond_d7

    move-object/from16 p19, v15

    iget-object v15, v0, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    goto :goto_db

    :cond_d7
    move-object/from16 p19, v15

    move-object/from16 v15, p20

    :goto_db
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    if-eqz v16, :cond_e6

    move-object/from16 p20, v15

    iget-object v15, v0, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    goto :goto_ea

    :cond_e6
    move-object/from16 p20, v15

    move-object/from16 v15, p21

    :goto_ea
    const/high16 v16, 0x200000

    and-int v1, v1, v16

    if-eqz v1, :cond_f3

    iget-object v1, v0, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    goto :goto_f5

    :cond_f3
    move-object/from16 v1, p22

    :goto_f5
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

    move-object/from16 p21, v15

    move-object/from16 p22, v1

    invoke-virtual/range {p0 .. p22}, Lcom/stripe/android/model/Source;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;)Lcom/stripe/android/model/Source;

    move-result-object v0

    return-object v0
.end method

.method public static final fromJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;
    .registers 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/Source;->Companion:Lcom/stripe/android/model/Source$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/android/model/Source$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMetaData$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Metadata is no longer returned to clients using publishable keys. Retrieve them on your server using your secret key instead."
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Lcom/stripe/android/model/Source$Owner;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    return-object v0
.end method

.method public final component11()Lcom/stripe/android/model/Source$Receiver;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    return-object v0
.end method

.method public final component12()Lcom/stripe/android/model/Source$Redirect;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    return-object v0
.end method

.method public final component13()Lcom/stripe/android/model/Source$Status;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    return-object v0
.end method

.method public final component14()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    return-object v0
.end method

.method public final component15()Lcom/stripe/android/model/SourceTypeModel;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Lcom/stripe/android/model/Source$Usage;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public final component21()Lcom/stripe/android/model/SourceOrder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/stripe/android/model/Source$CodeVerification;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    return-object v0
.end method

.method public final component5()Ljava/lang/Long;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/stripe/android/model/Source$Flow;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    return-object v0
.end method

.method public final component8()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component9()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;)Lcom/stripe/android/model/Source;
    .registers 47
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/model/Source$CodeVerification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/model/Source$Flow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/stripe/android/model/Source$Owner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/stripe/android/model/Source$Receiver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/stripe/android/model/Source$Redirect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/stripe/android/model/Source$Status;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/stripe/android/model/SourceTypeModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Lcom/stripe/android/model/Source$Usage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/stripe/android/model/WeChat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/stripe/android/model/Source$Klarna;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Lcom/stripe/android/model/SourceOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/Source$CodeVerification;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/Source$Flow;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/model/Source$Owner;",
            "Lcom/stripe/android/model/Source$Receiver;",
            "Lcom/stripe/android/model/Source$Redirect;",
            "Lcom/stripe/android/model/Source$Status;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/android/model/SourceTypeModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/Source$Usage;",
            "Lcom/stripe/android/model/WeChat;",
            "Lcom/stripe/android/model/Source$Klarna;",
            "Lcom/stripe/android/model/SourceOrder;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/android/model/Source;"
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

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    const-string v0, "type"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeRaw"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/stripe/android/model/Source;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v22}, Lcom/stripe/android/model/Source;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;)V

    return-object v23
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

    if-eq p0, p1, :cond_eb

    instance-of v0, p1, Lcom/stripe/android/model/Source;

    if-eqz v0, :cond_e9

    check-cast p1, Lcom/stripe/android/model/Source;

    invoke-virtual {p0}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    iget-object v1, p1, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e9

    goto :goto_eb

    :cond_e9
    const/4 p1, 0x0

    return p1

    :cond_eb
    :goto_eb
    const/4 p1, 0x1

    return p1
.end method

.method public final getAmount()Ljava/lang/Long;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getClientSecret()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodeVerification()Lcom/stripe/android/model/Source$CodeVerification;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    return-object v0
.end method

.method public final getCreated()Ljava/lang/Long;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlow()Lcom/stripe/android/model/Source$Flow;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/stripe/android/model/Source;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKlarna()Lcom/stripe/android/model/Source$Klarna;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    const-string v1, "klarna"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 159
    iget-object v0, p0, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 155
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source type must be \'klarna\'"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getMetaData()Ljava/util/Map;
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

    .line 73
    iget-object v0, p0, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    return-object v0
.end method

.method public final getOwner()Lcom/stripe/android/model/Source$Owner;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    return-object v0
.end method

.method public final getReceiver()Lcom/stripe/android/model/Source$Receiver;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    return-object v0
.end method

.method public final getRedirect()Lcom/stripe/android/model/Source$Redirect;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    return-object v0
.end method

.method public final getSourceOrder()Lcom/stripe/android/model/SourceOrder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    return-object v0
.end method

.method public final getSourceTypeData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    return-object v0
.end method

.method public final getSourceTypeModel()Lcom/stripe/android/model/SourceTypeModel;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    return-object v0
.end method

.method public final getStatementDescriptor()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/stripe/android/model/Source$Status;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeRaw()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsage()Lcom/stripe/android/model/Source$Usage;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    return-object v0
.end method

.method public final getWeChat()Lcom/stripe/android/model/WeChat;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    const-string v1, "wechat"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 150
    iget-object v0, p0, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 146
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source type must be \'wechat\'"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_18
    move v2, v1

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_40

    :cond_3f
    move v2, v1

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4d

    :cond_4c
    move v2, v1

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5a

    :cond_59
    move v2, v1

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_67

    :cond_66
    move v2, v1

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_74

    :cond_73
    move v2, v1

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    if-eqz v2, :cond_80

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_81

    :cond_80
    move v2, v1

    :goto_81
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8e

    :cond_8d
    move v2, v1

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9b

    :cond_9a
    move v2, v1

    :goto_9b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    if-eqz v2, :cond_a7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a8

    :cond_a7
    move v2, v1

    :goto_a8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    if-eqz v2, :cond_b4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b5

    :cond_b4
    move v2, v1

    :goto_b5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    if-eqz v2, :cond_c1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c2

    :cond_c1
    move v2, v1

    :goto_c2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_cf

    :cond_ce
    move v2, v1

    :goto_cf
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    if-eqz v2, :cond_db

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_dc

    :cond_db
    move v2, v1

    :goto_dc
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    if-eqz v2, :cond_e8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e9

    :cond_e8
    move v2, v1

    :goto_e9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    if-eqz v2, :cond_f5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f6

    :cond_f5
    move v2, v1

    :goto_f6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    if-eqz v2, :cond_102

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_103

    :cond_102
    move v2, v1

    :goto_103
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    if-eqz v2, :cond_10f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_110

    :cond_10f
    move v2, v1

    :goto_110
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    if-eqz v2, :cond_11b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_11b
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLiveMode()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codeVerification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", redirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceTypeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceTypeModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typeRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _weChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _klarna="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statementDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/Source;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/Source;->amount:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    iget-object v0, p0, Lcom/stripe/android/model/Source;->clientSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/Source;->codeVerification:Lcom/stripe/android/model/Source$CodeVerification;

    if-eqz v0, :cond_2e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    :cond_2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_31
    iget-object v0, p0, Lcom/stripe/android/model/Source;->created:Ljava/lang/Long;

    if-eqz v0, :cond_40

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_43

    :cond_40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_43
    iget-object v0, p0, Lcom/stripe/android/model/Source;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/Source;->flow:Lcom/stripe/android/model/Source$Flow;

    if-eqz v0, :cond_57

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5a

    :cond_57
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5a
    iget-object v0, p0, Lcom/stripe/android/model/Source;->isLiveMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_69

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    :cond_69
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6c
    iget-object v0, p0, Lcom/stripe/android/model/Source;->metaData:Ljava/util/Map;

    if-eqz v0, :cond_9f

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_82

    :cond_9f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_a2
    iget-object v0, p0, Lcom/stripe/android/model/Source;->owner:Lcom/stripe/android/model/Source$Owner;

    if-eqz v0, :cond_ad

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b0

    :cond_ad
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b0
    iget-object v0, p0, Lcom/stripe/android/model/Source;->receiver:Lcom/stripe/android/model/Source$Receiver;

    if-eqz v0, :cond_bb

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_be

    :cond_bb
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_be
    iget-object v0, p0, Lcom/stripe/android/model/Source;->redirect:Lcom/stripe/android/model/Source$Redirect;

    if-eqz v0, :cond_c9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_cc

    :cond_c9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_cc
    iget-object v0, p0, Lcom/stripe/android/model/Source;->status:Lcom/stripe/android/model/Source$Status;

    if-eqz v0, :cond_db

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_de

    :cond_db
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_de
    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceTypeData:Ljava/util/Map;

    if-eqz v0, :cond_10f

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_112

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_f4

    :cond_10f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_112
    iget-object v0, p0, Lcom/stripe/android/model/Source;->sourceTypeModel:Lcom/stripe/android/model/SourceTypeModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/stripe/android/model/Source;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Source;->typeRaw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Source;->usage:Lcom/stripe/android/model/Source$Usage;

    if-eqz p2, :cond_130

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_133

    :cond_130
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_133
    iget-object p2, p0, Lcom/stripe/android/model/Source;->_weChat:Lcom/stripe/android/model/WeChat;

    if-eqz p2, :cond_13e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_141

    :cond_13e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_141
    iget-object p2, p0, Lcom/stripe/android/model/Source;->_klarna:Lcom/stripe/android/model/Source$Klarna;

    if-eqz p2, :cond_14c

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14f

    :cond_14c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14f
    iget-object p2, p0, Lcom/stripe/android/model/Source;->sourceOrder:Lcom/stripe/android/model/SourceOrder;

    if-eqz p2, :cond_15a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15d

    :cond_15a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15d
    iget-object p2, p0, Lcom/stripe/android/model/Source;->statementDescriptor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
