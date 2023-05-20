.class public Lcom/nimbusds/jose/shaded/json/JSONObject;
.super Ljava/util/HashMap;
.source "JSONObject.java"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/JSONAware;
.implements Lcom/nimbusds/jose/shaded/json/JSONAwareEx;
.implements Lcom/nimbusds/jose/shaded/json/JSONStreamAwareEx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/nimbusds/jose/shaded/json/JSONAware;",
        "Lcom/nimbusds/jose/shaded/json/JSONAwareEx;",
        "Lcom/nimbusds/jose/shaded/json/JSONStreamAwareEx;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6fc977743e77bbcL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 54
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static merge(Lcom/nimbusds/jose/shaded/json/JSONArray;Lcom/nimbusds/jose/shaded/json/JSONArray;)Lcom/nimbusds/jose/shaded/json/JSONArray;
    .registers 2

    .line 198
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONArray;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method protected static merge(Lcom/nimbusds/jose/shaded/json/JSONArray;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONArray;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 191
    :cond_3
    instance-of v0, p0, Lcom/nimbusds/jose/shaded/json/JSONArray;

    if-eqz v0, :cond_e

    .line 192
    check-cast p1, Lcom/nimbusds/jose/shaded/json/JSONArray;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->merge(Lcom/nimbusds/jose/shaded/json/JSONArray;Lcom/nimbusds/jose/shaded/json/JSONArray;)Lcom/nimbusds/jose/shaded/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 193
    :cond_e
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONArray;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private static merge(Lcom/nimbusds/jose/shaded/json/JSONObject;Lcom/nimbusds/jose/shaded/json/JSONObject;)Lcom/nimbusds/jose/shaded/json/JSONObject;
    .registers 7

    if-nez p1, :cond_3

    return-object p0

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    goto :goto_b

    .line 164
    :cond_22
    instance-of v4, v2, Lcom/nimbusds/jose/shaded/json/JSONArray;

    if-eqz v4, :cond_30

    .line 165
    check-cast v2, Lcom/nimbusds/jose/shaded/json/JSONArray;

    invoke-static {v2, v3}, Lcom/nimbusds/jose/shaded/json/JSONObject;->merge(Lcom/nimbusds/jose/shaded/json/JSONArray;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nimbusds/jose/shaded/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 168
    :cond_30
    instance-of v4, v2, Lcom/nimbusds/jose/shaded/json/JSONObject;

    if-eqz v4, :cond_3e

    .line 169
    check-cast v2, Lcom/nimbusds/jose/shaded/json/JSONObject;

    invoke-static {v2, v3}, Lcom/nimbusds/jose/shaded/json/JSONObject;->merge(Lcom/nimbusds/jose/shaded/json/JSONObject;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nimbusds/jose/shaded/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 172
    :cond_3e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_b

    .line 174
    :cond_45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    .line 175
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSON merge can not merge two "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Object together"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_77
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSON merge can not merge "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_a6
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    goto :goto_ae

    .line 183
    :cond_c1
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nimbusds/jose/shaded/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    :cond_c9
    return-object p0
.end method

.method protected static merge(Lcom/nimbusds/jose/shaded/json/JSONObject;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONObject;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 151
    :cond_3
    instance-of v0, p1, Lcom/nimbusds/jose/shaded/json/JSONObject;

    if-eqz v0, :cond_e

    .line 152
    check-cast p1, Lcom/nimbusds/jose/shaded/json/JSONObject;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->merge(Lcom/nimbusds/jose/shaded/json/JSONObject;Lcom/nimbusds/jose/shaded/json/JSONObject;)Lcom/nimbusds/jose/shaded/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 153
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON megre can not merge JSONObject with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toJSONString(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONObject;->toJSONString(Ljava/util/Map;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/util/Map;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/shaded/json/JSONStyle;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    :try_start_5
    invoke-static {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->writeJSON(Ljava/util/Map;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_8

    .line 78
    :catch_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeJSON(Ljava/util/Map;Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, p1, v0}, Lcom/nimbusds/jose/shaded/json/JSONObject;->writeJSON(Ljava/util/Map;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method

.method public static writeJSON(Ljava/util/Map;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
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

    if-nez p0, :cond_8

    const-string p0, "null"

    .line 124
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 127
    :cond_8
    sget-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONMapWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-interface {v0, p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method


# virtual methods
.method public merge(Ljava/lang/Object;)V
    .registers 2

    .line 145
    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->merge(Lcom/nimbusds/jose/shaded/json/JSONObject;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONObject;

    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 2

    .line 203
    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONObject;->toJSONString(Ljava/util/Map;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJSONString(Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .registers 2

    .line 207
    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->toJSONString(Ljava/util/Map;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 215
    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONObject;->toJSONString(Ljava/util/Map;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .registers 2

    .line 211
    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->toJSONString(Ljava/util/Map;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, p1, v0}, Lcom/nimbusds/jose/shaded/json/JSONObject;->writeJSON(Ljava/util/Map;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method

.method public writeJSONString(Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-static {p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/JSONObject;->writeJSON(Ljava/util/Map;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method
