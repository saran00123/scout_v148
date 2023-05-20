.class synthetic Lorg/tensorflow/lite/DataType$1;
.super Ljava/lang/Object;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/DataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$tensorflow$lite$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    invoke-static {}, Lorg/tensorflow/lite/DataType;->values()[Lorg/tensorflow/lite/DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    :try_start_9
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->INT8:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    sget-object v1, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v1}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    return-void
.end method
