.class public Lcom/huawei/hms/core/aidl/e;
.super Ljava/lang/Object;
.source "MessageCodec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 5

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    invoke-virtual {p0, p1, p3, v0}, Lcom/huawei/hms/core/aidl/e;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    const-string p1, "_next_item_"

    .line 117
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Field;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 7

    .line 22
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 25
    instance-of v1, p2, Landroid/os/Bundle;

    if-eqz v1, :cond_4d

    .line 27
    :try_start_c
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "_val_type_"

    const/4 v3, -0x1

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 30
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/huawei/hms/core/aidl/e;->a(Ljava/lang/reflect/Type;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_22
    if-nez v2, :cond_4d

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/core/aidl/IMessageEntity;

    .line 33
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/core/aidl/e;->a(Landroid/os/Bundle;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    move-result-object p1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_35

    return-object p1

    .line 38
    :catch_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decode, read value of the field exception, field name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageCodec"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_4d
    return-object p2
.end method

.method private a(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/reflect/Field;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/core/aidl/e;->a(Ljava/lang/reflect/Field;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 18
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 20
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_14
    return-void
.end method

.method private b(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/reflect/Field;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/huawei/hms/core/aidl/e;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)Z
    .registers 6

    .line 5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 6
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 7
    :cond_a
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 8
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5d

    .line 9
    :cond_18
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_26

    .line 10
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_5d

    .line 11
    :cond_26
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_34

    .line 12
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_5d

    .line 13
    :cond_34
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_42

    .line 14
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_5d

    .line 15
    :cond_42
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_50

    .line 16
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_5d

    .line 17
    :cond_50
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5f

    .line 18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_5d
    const/4 p1, 0x1

    return p1

    :cond_5f
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lcom/huawei/hms/core/aidl/IMessageEntity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_3e

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 80
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_39

    aget-object v4, v1, v3

    .line 81
    const-class v5, Lcom/huawei/hms/core/aidl/annotation/Packed;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 83
    :try_start_18
    invoke-direct {p0, p1, v4, p2}, Lcom/huawei/hms/core/aidl/e;->b(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/reflect/Field;Landroid/os/Bundle;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_36

    .line 85
    :catch_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encode, get value of the field exception, field name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MessageCodec"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 89
    :cond_39
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_3e
    return-object p2
.end method

.method public a(Landroid/os/Bundle;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;
    .registers 10

    if-nez p1, :cond_3

    return-object p2

    .line 1
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_4c

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    .line 7
    const-class v5, Lcom/huawei/hms/core/aidl/annotation/Packed;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 9
    :try_start_26
    invoke-direct {p0, p2, v4, p1}, Lcom/huawei/hms/core/aidl/e;->a(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/reflect/Field;Landroid/os/Bundle;)V
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_44

    .line 11
    :catch_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode, set value of the field exception, field name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MessageCodec"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 15
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_12

    :cond_4c
    return-object p2
.end method

.method protected a(Ljava/lang/reflect/Type;Landroid/os/Bundle;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_next_item_"

    .line 42
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    :goto_b
    if-eqz p2, :cond_6a

    const-string v2, "_value_"

    .line 44
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_62

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_62

    instance-of v3, v2, Ljava/io/Serializable;

    if-eqz v3, :cond_26

    goto :goto_62

    .line 48
    :cond_26
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_65

    .line 49
    check-cast v2, Landroid/os/Bundle;

    const/4 v3, -0x1

    const-string v4, "_val_type_"

    .line 50
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5a

    if-nez v3, :cond_52

    .line 54
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 55
    check-cast v3, Ljava/lang/Class;

    .line 56
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 57
    check-cast v3, Lcom/huawei/hms/core/aidl/IMessageEntity;

    invoke-virtual {p0, v2, v3}, Lcom/huawei/hms/core/aidl/e;->a(Landroid/os/Bundle;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 59
    :cond_52
    new-instance p1, Ljava/lang/InstantiationException;

    const-string p2, "Unknown type can not be supported"

    invoke-direct {p1, p2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5a
    new-instance p1, Ljava/lang/InstantiationException;

    const-string p2, "Nested List can not be supported"

    invoke-direct {p1, p2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_62
    :goto_62
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_65
    :goto_65
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_b

    :cond_6a
    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 90
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/core/aidl/e;->b(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 92
    :cond_a
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 93
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_6b

    .line 94
    :cond_14
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_1e

    .line 95
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_6b

    .line 96
    :cond_1e
    instance-of v0, p2, [B

    if-eqz v0, :cond_28

    .line 97
    check-cast p2, [B

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_6b

    .line 98
    :cond_28
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_32

    .line 99
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hms/core/aidl/e;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_6b

    .line 100
    :cond_32
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_3c

    .line 101
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_6b

    .line 102
    :cond_3c
    instance-of v0, p2, Lcom/huawei/hms/core/aidl/IMessageEntity;

    if-eqz v0, :cond_55

    .line 103
    check-cast p2, Lcom/huawei/hms/core/aidl/IMessageEntity;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p2, v0}, Lcom/huawei/hms/core/aidl/e;->a(Lcom/huawei/hms/core/aidl/IMessageEntity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "_val_type_"

    .line 104
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6b

    .line 107
    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot support type, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageCodec"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6b
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 8

    .line 108
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1f

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x1

    const-string v3, "_val_type_"

    .line 112
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    const-string v2, "_value_"

    .line 114
    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/hms/core/aidl/e;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5

    :cond_26
    return-void
.end method
