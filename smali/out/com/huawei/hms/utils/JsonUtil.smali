.class public Lcom/huawei/hms/utils/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static final BYTE_BYTE:Ljava/lang/String; = "_byte_"

.field private static final LIST_FIELD_VALUE:Ljava/lang/String; = "_value_"

.field private static final LIST_ITEM_VALUE:Ljava/lang/String; = "_list_item_"

.field private static final LIST_SIZE:Ljava/lang/String; = "_list_size_"

.field private static final MAP_MAP:Ljava/lang/String; = "_map_"

.field private static final NEXT_ITEM:Ljava/lang/String; = "_next_item_"

.field private static final PRE_PKG:Ljava/lang/String; = "com.huawei"

.field private static final TAG:Ljava/lang/String; = "JsonUtil"

.field protected static final VAL_BYTE:I = 0x2

.field protected static final VAL_ENTITY:I = 0x0

.field protected static final VAL_LIST:I = 0x1

.field protected static final VAL_MAP:I = 0x3

.field protected static final VAL_NULL:I = -0x1

.field protected static final VAL_TYPE:Ljava/lang/String; = "_val_type_"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInnerJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_9
    if-eqz v0, :cond_3b

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 5
    array-length v3, v2

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_36

    aget-object v5, v2, v4

    .line 6
    const-class v6, Lcom/huawei/hms/core/aidl/annotation/Packed;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    const/4 v7, 0x1

    .line 8
    invoke-static {v5, v7}, Lcom/huawei/hms/utils/JsonUtil;->setAccessible(Ljava/lang/reflect/Field;Z)V

    .line 9
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 11
    invoke-static {v5, v6}, Lcom/huawei/hms/utils/JsonUtil;->setAccessible(Ljava/lang/reflect/Field;Z)V

    .line 12
    invoke-static {v7, v8, v1}, Lcom/huawei/hms/utils/JsonUtil;->disposeType(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)Z

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 15
    :cond_36
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_9

    .line 17
    :cond_3b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const-string v1, "JsonUtil"

    if-nez p0, :cond_c

    const-string p0, "createJsonString error, the input IMessageEntity is null"

    .line 1
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/huawei/hms/utils/JsonUtil;->createInnerJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_10} :catch_2b
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch JSONException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :catch_2b
    move-exception p0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch IllegalAccessException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-object v0
.end method

.method private static disposeType(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_82

    .line 3
    :cond_b
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    .line 4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_82

    .line 5
    :cond_1a
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_24

    .line 6
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_82

    .line 7
    :cond_24
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2e

    .line 8
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_82

    .line 9
    :cond_2e
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_38

    .line 10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_82

    .line 11
    :cond_38
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_42

    .line 12
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_82

    .line 13
    :cond_42
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4c

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_82

    .line 15
    :cond_4c
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_56

    .line 16
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_82

    .line 17
    :cond_56
    instance-of v0, p1, [B

    if-eqz v0, :cond_60

    .line 18
    check-cast p1, [B

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/utils/JsonUtil;->writeByte(Ljava/lang/String;[BLorg/json/JSONObject;)V

    goto :goto_82

    .line 19
    :cond_60
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_6a

    .line 20
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/utils/JsonUtil;->writeList(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;)V

    goto :goto_82

    .line 21
    :cond_6a
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_74

    .line 22
    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/utils/JsonUtil;->writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    goto :goto_82

    .line 23
    :cond_74
    instance-of v0, p1, Lcom/huawei/hms/core/aidl/IMessageEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_9b

    .line 25
    :try_start_79
    check-cast p1, Lcom/huawei/hms/core/aidl/IMessageEntity;

    invoke-static {p1}, Lcom/huawei/hms/utils/JsonUtil;->createInnerJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_82
    .catch Ljava/lang/IllegalAccessException; {:try_start_79 .. :try_end_82} :catch_84

    :goto_82
    const/4 p0, 0x1

    return p0

    :catch_84
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IllegalAccessException , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JsonUtil"

    invoke-static {p1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    return v1
.end method

.method public static getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_39

    .line 6
    :cond_e
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    return-object v1

    .line 10
    :cond_1a
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 11
    instance-of p1, p0, Ljava/lang/String;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_20} :catch_23

    if-eqz p1, :cond_39

    return-object p0

    .line 15
    :catch_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInfoFromJsonobject:parser json error :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JsonUtil"

    invoke-static {p1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-object v1
.end method

.method public static getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_d

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method private static getObjectValue(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "header"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_26
    const-string v0, "body"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_d

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public static jsonToEntity(Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;
    .registers 10

    const-string v0, "JsonUtil"

    .line 1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_b
    if-eqz v1, :cond_5c

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 5
    array-length v3, p0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_3e

    aget-object v5, p0, v4

    .line 6
    const-class v6, Lcom/huawei/hms/core/aidl/annotation/Packed;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_1d} :catch_43

    if-eqz v6, :cond_3b

    .line 8
    :try_start_1f
    invoke-static {p1, v5, v2}, Lcom/huawei/hms/utils/JsonUtil;->readFiled(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/reflect/Field;Lorg/json/JSONObject;)V
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_22} :catch_23
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_43

    goto :goto_3b

    .line 10
    :catch_23
    :try_start_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jsonToEntity, set value of the field exception, field name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 14
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_42} :catch_43

    goto :goto_b

    :catch_43
    move-exception p0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch JSONException when parse jsonString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    return-object p1
.end method

.method private static readByte(Lorg/json/JSONObject;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    const-string v0, "_byte_"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/support/log/common/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readByte failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JsonUtil"

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static readFiled(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/reflect/Field;Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/utils/JsonUtil;->readJson(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/reflect/Field;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v1}, Lcom/huawei/hms/utils/JsonUtil;->setAccessible(Ljava/lang/reflect/Field;Z)V

    .line 5
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/JsonUtil;->setAccessible(Ljava/lang/reflect/Field;Z)V

    :cond_14
    return-void
.end method

.method private static readJson(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/reflect/Field;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string p0, "_val_type_"

    const-string v0, "JsonUtil"

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1, p2}, Lcom/huawei/hms/utils/JsonUtil;->getObjectValue(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_94

    .line 5
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.huawei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/huawei/hms/core/aidl/IMessageEntity;

    if-eqz v2, :cond_3c

    .line 7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/core/aidl/IMessageEntity;

    invoke-static {p2, p0}, Lcom/huawei/hms/utils/JsonUtil;->jsonToEntity(Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3c
    instance-of v2, p2, Lorg/json/JSONObject;

    if-eqz v2, :cond_8e

    .line 10
    move-object v2, p2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 11
    move-object v2, p2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_83

    if-nez p0, :cond_56

    goto :goto_83

    :cond_56
    const/4 v2, 0x2

    if-ne p0, v2, :cond_60

    .line 15
    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/huawei/hms/utils/JsonUtil;->readByte(Lorg/json/JSONObject;)[B

    move-result-object p0

    return-object p0

    :cond_60
    const/4 v2, 0x3

    if-ne p0, v2, :cond_6e

    .line 17
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p0, p2}, Lcom/huawei/hms/utils/JsonUtil;->readMap(Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot support type : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 20
    :cond_83
    :goto_83
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p0, p2}, Lcom/huawei/hms/utils/JsonUtil;->readList(Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0
    :try_end_8d
    .catch Ljava/lang/InstantiationException; {:try_start_f .. :try_end_8d} :catch_8f

    return-object p0

    :cond_8e
    return-object p2

    :catch_8f
    const-string p0, "InstantiationException  "

    .line 36
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    :goto_94
    return-object v1
.end method

.method private static readList(Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const-string v0, "_list_size_"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "_val_type_"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v0, :cond_50

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_list_item_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_47

    .line 7
    move-object v6, p0

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v3

    .line 8
    check-cast v6, Ljava/lang/Class;

    .line 9
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 10
    check-cast v5, Ljava/lang/String;

    check-cast v6, Lcom/huawei/hms/core/aidl/IMessageEntity;

    invoke-static {v5, v6}, Lcom/huawei/hms/utils/JsonUtil;->jsonToEntity(Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_47
    const/4 v6, 0x1

    if-ne v1, v6, :cond_4d

    .line 12
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_50
    return-object v2
.end method

.method private static readMap(Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    .line 2
    check-cast p0, Ljava/lang/Class;

    const-string v0, "_map_"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_1c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/huawei/hms/core/aidl/IMessageEntity;

    if-eqz v2, :cond_42

    add-int/lit8 v2, v1, 0x1

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/core/aidl/IMessageEntity;

    invoke-static {v2, v3}, Lcom/huawei/hms/utils/JsonUtil;->jsonToEntity(Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 11
    :cond_42
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4f
    add-int/lit8 v1, v1, 0x2

    goto :goto_1c

    :cond_52
    return-object p1
.end method

.method private static setAccessible(Ljava/lang/reflect/Field;Z)V
    .registers 3

    .line 1
    new-instance v0, Lcom/huawei/hms/utils/JsonUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/utils/JsonUtil$1;-><init>(Ljava/lang/reflect/Field;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static writeByte(Ljava/lang/String;[BLorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "_val_type_"

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "_byte_"

    .line 4
    :try_start_d
    invoke-static {p1}, Lcom/huawei/hms/support/log/common/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_30

    :catch_15
    move-exception p1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeByte failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JsonUtil"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_30
    invoke-virtual {p2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static writeList(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    const-string v2, "_val_type_"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "_list_size_"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    move v3, v1

    .line 4
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_list_item_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/huawei/hms/utils/JsonUtil;->disposeType(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)Z

    .line 6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/huawei/hms/core/aidl/IMessageEntity;

    if-eqz v4, :cond_3f

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 10
    :cond_42
    invoke-virtual {p2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v3, v2, Lcom/huawei/hms/core/aidl/IMessageEntity;

    if-eqz v3, :cond_2f

    .line 8
    check-cast v2, Lcom/huawei/hms/core/aidl/IMessageEntity;

    invoke-static {v2}, Lcom/huawei/hms/utils/JsonUtil;->createInnerJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_32

    .line 10
    :cond_2f
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 12
    :goto_32
    instance-of v2, v1, Lcom/huawei/hms/core/aidl/IMessageEntity;

    if-eqz v2, :cond_40

    .line 13
    check-cast v1, Lcom/huawei/hms/core/aidl/IMessageEntity;

    invoke-static {v1}, Lcom/huawei/hms/utils/JsonUtil;->createInnerJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    .line 15
    :cond_40
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    .line 18
    :cond_44
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x3

    const-string v2, "_val_type_"

    .line 19
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_map_"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
