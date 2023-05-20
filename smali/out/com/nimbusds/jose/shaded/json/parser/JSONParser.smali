.class public Lcom/nimbusds/jose/shaded/json/parser/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field public static final ACCEPT_LEADING_ZERO:I = 0x20

.field public static final ACCEPT_NAN:I = 0x4

.field public static final ACCEPT_NON_QUOTE:I = 0x2

.field public static final ACCEPT_SIMPLE_QUOTE:I = 0x1

.field public static final ACCEPT_TAILLING_DATA:I = 0x100

.field public static final ACCEPT_TAILLING_SPACE:I = 0x200

.field public static final ACCEPT_USELESS_COMMA:I = 0x40

.field public static DEFAULT_PERMISSIVE_MODE:I = 0x0

.field public static final IGNORE_CONTROL_CHAR:I = 0x8

.field public static final MODE_JSON_SIMPLE:I = 0x3c0

.field public static final MODE_PERMISSIVE:I = -0x1

.field public static final MODE_RFC4627:I = 0x190

.field public static final MODE_STRICTEST:I = 0x90

.field public static final USE_HI_PRECISION_FLOAT:I = 0x80

.field public static final USE_INTEGER_STORAGE:I = 0x10


# instance fields
.field private mode:I

.field private pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

.field private pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

.field private pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

.field private pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "JSON_SMART_SIMPLE"

    .line 110
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v0, 0x3c0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    sput v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    if-nez v0, :cond_d

    .line 240
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    .line 241
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    if-nez v0, :cond_d

    .line 250
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    .line 251
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    if-nez v0, :cond_d

    .line 261
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    .line 262
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pSBintream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    if-nez v0, :cond_d

    .line 210
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    .line 211
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    if-nez v0, :cond_d

    .line 220
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    .line 221
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    invoke-virtual {v0, p1, p2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    if-nez v0, :cond_d

    .line 230
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    .line 231
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pStream:Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    if-nez v0, :cond_d

    .line 139
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    .line 140
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    if-nez v0, :cond_d

    .line 149
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    .line 150
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    invoke-virtual {v0, p1, p2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    if-nez v0, :cond_d

    .line 155
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    .line 156
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pString:Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    if-nez v0, :cond_d

    .line 165
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    .line 166
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BII)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    if-nez v0, :cond_d

    .line 187
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    .line 188
    :cond_d
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    sget-object v6, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    sget-object v7, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    if-nez v0, :cond_d

    .line 193
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    .line 194
    :cond_d
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    sget-object v7, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    if-nez v0, :cond_d

    .line 200
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    .line 201
    :cond_d
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    if-nez v0, :cond_d

    .line 175
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    .line 176
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    invoke-virtual {v0, p1, p2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    if-nez v0, :cond_d

    .line 181
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    .line 182
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->pBytes:Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
