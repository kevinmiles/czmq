################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

module CZMQ
  module FFI

    # work with CURVE security certificate stores
    # @note This class is 100% generated using zproject.
    class Zcertstore
      # Raised when one tries to use an instance of {Zcertstore} after
      # the internal pointer to the native object has been nullified.
      class DestroyedError < RuntimeError; end

      # Boilerplate for self pointer, initializer, and finalizer
      class << self
        alias :__new :new
      end
      # Attaches the pointer _ptr_ to this instance and defines a finalizer for
      # it if necessary.
      # @param ptr [::FFI::Pointer]
      # @param finalize [Boolean]
      def initialize(ptr, finalize = true)
        @ptr = ptr
        if @ptr.null?
          @ptr = nil # Remove null pointers so we don't have to test for them.
        elsif finalize
          @finalizer = self.class.create_finalizer_for @ptr
          ObjectSpace.define_finalizer self, @finalizer
        end
      end
      # @param ptr [::FFI::Pointer]
      # @return [Proc]
      def self.create_finalizer_for(ptr)
        Proc.new do
          ptr_ptr = ::FFI::MemoryPointer.new :pointer
          ptr_ptr.write_pointer ptr
          ::CZMQ::FFI.zcertstore_destroy ptr_ptr
        end
      end
      # @return [Boolean]
      def null?
        !@ptr or @ptr.null?
      end
      # Return internal pointer
      # @return [::FFI::Pointer]
      def __ptr
        raise DestroyedError unless @ptr
        @ptr
      end
      # So external Libraries can just pass the Object to a FFI function which expects a :pointer
      alias_method :to_ptr, :__ptr
      # Nullify internal pointer and return pointer pointer.
      # @note This detaches the current instance from the native object
      #   and thus makes it unusable.
      # @return [::FFI::MemoryPointer] the pointer pointing to a pointer
      #   pointing to the native object
      def __ptr_give_ref
        raise DestroyedError unless @ptr
        ptr_ptr = ::FFI::MemoryPointer.new :pointer
        ptr_ptr.write_pointer @ptr
        __undef_finalizer if @finalizer
        @ptr = nil
        ptr_ptr
      end
      # Undefines the finalizer for this object.
      # @note Only use this if you need to and can guarantee that the native
      #   object will be freed by other means.
      # @return [void]
      def __undef_finalizer
        ObjectSpace.undefine_finalizer self
        @finalizer = nil
      end

      # Create a new certificate store from a disk directory, loading and        
      # indexing all certificates in that location. The directory itself may be  
      # absent, and created later, or modified at any time. The certificate store
      # is automatically refreshed on any zcertstore_lookup() call. If the       
      # location is specified as NULL, creates a pure-memory store, which you    
      # can work with by inserting certificates at runtime.                      
      # @param location [String, #to_s, nil]
      # @return [CZMQ::Zcertstore]
      def self.new(location)
        ptr = ::CZMQ::FFI.zcertstore_new(location)
        __new ptr
      end

      # Destroy a certificate store object in memory. Does not affect anything
      # stored on disk.                                                       
      #
      # @return [void]
      def destroy()
        return unless @ptr
        self_p = __ptr_give_ref
        result = ::CZMQ::FFI.zcertstore_destroy(self_p)
        result
      end

      # Look up certificate by public key, returns zcert_t object if found,
      # else returns NULL. The public key is provided in Z85 text format.  
      #
      # @param public_key [String, #to_s, nil]
      # @return [Zcert]
      def lookup(public_key)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zcertstore_lookup(self_p, public_key)
        result = Zcert.__new result, false
        result
      end

      # Insert certificate into certificate store in memory. Note that this
      # does not save the certificate to disk. To do that, use zcert_save()
      # directly on the certificate. Takes ownership of zcert_t object.    
      #
      # @param cert_p [#__ptr_give_ref]
      # @return [void]
      def insert(cert_p)
        raise DestroyedError unless @ptr
        self_p = @ptr
        cert_p = cert_p.__ptr_give_ref
        result = ::CZMQ::FFI.zcertstore_insert(self_p, cert_p)
        result
      end

      # Print list of certificates in store to logging facility
      #
      # @return [void]
      def print()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zcertstore_print(self_p)
        result
      end

      # DEPRECATED as incompatible with centralized logging
      # Print list of certificates in store to open stream 
      #
      # @param file [::FFI::Pointer, #to_ptr]
      # @return [void]
      def fprint(file)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zcertstore_fprint(self_p, file)
        result
      end

      # Self test of this class
      #
      # @param verbose [Boolean]
      # @return [void]
      def self.test(verbose)
        verbose = !(0==verbose||!verbose) # boolean
        result = ::CZMQ::FFI.zcertstore_test(verbose)
        result
      end
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
