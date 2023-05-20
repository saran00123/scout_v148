.class final Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$8;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Appendable;",
            "Lcom/nimbusds/jose/shaded/json/JSONStyle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 180
    invoke-virtual {p3, p2}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->objectStart(Ljava/lang/Appendable;)V

    const/4 v1, 0x0

    move v2, v1

    .line 181
    :goto_9
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_7e

    .line 182
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 183
    array-length v4, v3

    move v5, v2

    move v2, v1

    :goto_14
    if-ge v2, v4, :cond_78

    aget-object v6, v3, v2

    .line 184
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit16 v8, v7, 0x98

    if-lez v8, :cond_21

    goto :goto_75

    :cond_21
    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_2a

    .line 189
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_5e

    .line 191
    :cond_2a
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nimbusds/jose/shaded/json/JSONUtil;->getGetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_82

    const/4 v8, 0x0

    .line 195
    :try_start_33
    new-array v9, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_39

    :catch_39
    if-nez v8, :cond_55

    .line 199
    :try_start_3b
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 200
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v9, :cond_47

    const-class v9, Ljava/lang/Boolean;

    if-ne v7, v9, :cond_55

    .line 201
    :cond_47
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nimbusds/jose/shaded/json/JSONUtil;->getIsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    :cond_55
    if-nez v8, :cond_58

    goto :goto_75

    .line 207
    :cond_58
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v8, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_5e
    if-nez v7, :cond_67

    .line 209
    invoke-virtual {p3}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->ignoreNull()Z

    move-result v8

    if-eqz v8, :cond_67

    goto :goto_75

    :cond_67
    if-eqz v5, :cond_6d

    .line 212
    invoke-virtual {p3, p2}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->objectNext(Ljava/lang/Appendable;)V

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x1

    .line 215
    :goto_6e
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7, p2, p3}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->writeJSONKV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 218
    :cond_78
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move v2, v5

    goto :goto_9

    .line 220
    :cond_7e
    invoke-virtual {p3, p2}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->objectStop(Ljava/lang/Appendable;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_81} :catch_82

    return-void

    :catch_82
    move-exception p1

    .line 222
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
