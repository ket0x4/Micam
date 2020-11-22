.class public Lcom/miui/whetstone/steganography/EncodedObject;
.super Ljava/lang/Object;
.source "EncodedObject.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/whetstone/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public intoBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/whetstone/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
