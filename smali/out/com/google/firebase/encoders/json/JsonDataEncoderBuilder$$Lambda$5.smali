.class final synthetic Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoder;


# static fields
.field private static final instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;->instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/firebase/encoders/ValueEncoder;
    .registers 1

    sget-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;->instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/google/firebase/encoders/ValueEncoderContext;

    invoke-static {p1, p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->lambda$static$2(Ljava/lang/Boolean;Lcom/google/firebase/encoders/ValueEncoderContext;)V

    return-void
.end method
