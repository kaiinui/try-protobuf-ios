// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Book.pb.h"
// @@protoc_insertion_point(imports)

@implementation BookRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [BookRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Book ()
@property (strong) NSString* title;
@property SInt32 pageNumber;
@end

@implementation Book

- (BOOL) hasTitle {
  return !!hasTitle_;
}
- (void) setHasTitle:(BOOL) value_ {
  hasTitle_ = !!value_;
}
@synthesize title;
- (BOOL) hasPageNumber {
  return !!hasPageNumber_;
}
- (void) setHasPageNumber:(BOOL) value_ {
  hasPageNumber_ = !!value_;
}
@synthesize pageNumber;
- (id) init {
  if ((self = [super init])) {
    self.title = @"";
    self.pageNumber = 0;
  }
  return self;
}
static Book* defaultBookInstance = nil;
+ (void) initialize {
  if (self == [Book class]) {
    defaultBookInstance = [[Book alloc] init];
  }
}
+ (Book*) defaultInstance {
  return defaultBookInstance;
}
- (Book*) defaultInstance {
  return defaultBookInstance;
}
- (BOOL) isInitialized {
  if (!self.hasTitle) {
    return NO;
  }
  if (!self.hasPageNumber) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasTitle) {
    [output writeString:1 value:self.title];
  }
  if (self.hasPageNumber) {
    [output writeInt32:2 value:self.pageNumber];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasTitle) {
    size_ += computeStringSize(1, self.title);
  }
  if (self.hasPageNumber) {
    size_ += computeInt32Size(2, self.pageNumber);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Book*) parseFromData:(NSData*) data {
  return (Book*)[[[Book builder] mergeFromData:data] build];
}
+ (Book*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Book*)[[[Book builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Book*) parseFromInputStream:(NSInputStream*) input {
  return (Book*)[[[Book builder] mergeFromInputStream:input] build];
}
+ (Book*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Book*)[[[Book builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Book*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Book*)[[[Book builder] mergeFromCodedInputStream:input] build];
}
+ (Book*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Book*)[[[Book builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (BookBuilder*) builder {
  return [[BookBuilder alloc] init];
}
+ (BookBuilder*) builderWithPrototype:(Book*) prototype {
  return [[Book builder] mergeFrom:prototype];
}
- (BookBuilder*) builder {
  return [Book builder];
}
- (BookBuilder*) toBuilder {
  return [Book builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasTitle) {
    [output appendFormat:@"%@%@: %@\n", indent, @"title", self.title];
  }
  if (self.hasPageNumber) {
    [output appendFormat:@"%@%@: %@\n", indent, @"pageNumber", [NSNumber numberWithInteger:self.pageNumber]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Book class]]) {
    return NO;
  }
  Book *otherMessage = other;
  return
      self.hasTitle == otherMessage.hasTitle &&
      (!self.hasTitle || [self.title isEqual:otherMessage.title]) &&
      self.hasPageNumber == otherMessage.hasPageNumber &&
      (!self.hasPageNumber || self.pageNumber == otherMessage.pageNumber) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasTitle) {
    hashCode = hashCode * 31 + [self.title hash];
  }
  if (self.hasPageNumber) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.pageNumber] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface BookBuilder()
@property (strong) Book* result;
@end

@implementation BookBuilder
@synthesize result;
- (id) init {
  if ((self = [super init])) {
    self.result = [[Book alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (BookBuilder*) clear {
  self.result = [[Book alloc] init];
  return self;
}
- (BookBuilder*) clone {
  return [Book builderWithPrototype:result];
}
- (Book*) defaultInstance {
  return [Book defaultInstance];
}
- (Book*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Book*) buildPartial {
  Book* returnMe = result;
  self.result = nil;
  return returnMe;
}
- (BookBuilder*) mergeFrom:(Book*) other {
  if (other == [Book defaultInstance]) {
    return self;
  }
  if (other.hasTitle) {
    [self setTitle:other.title];
  }
  if (other.hasPageNumber) {
    [self setPageNumber:other.pageNumber];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (BookBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (BookBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setTitle:[input readString]];
        break;
      }
      case 16: {
        [self setPageNumber:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasTitle {
  return result.hasTitle;
}
- (NSString*) title {
  return result.title;
}
- (BookBuilder*) setTitle:(NSString*) value {
  result.hasTitle = YES;
  result.title = value;
  return self;
}
- (BookBuilder*) clearTitle {
  result.hasTitle = NO;
  result.title = @"";
  return self;
}
- (BOOL) hasPageNumber {
  return result.hasPageNumber;
}
- (SInt32) pageNumber {
  return result.pageNumber;
}
- (BookBuilder*) setPageNumber:(SInt32) value {
  result.hasPageNumber = YES;
  result.pageNumber = value;
  return self;
}
- (BookBuilder*) clearPageNumber {
  result.hasPageNumber = NO;
  result.pageNumber = 0;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)